# Run against the local site on port 8765 and an isolated Edge CDP session on 9225.
# Screenshots are written outside the site by default; no customer data is used.
param([string]$OutputDirectory = $env:TEMP)
$ErrorActionPreference = 'Stop'
$tabs = Invoke-RestMethod 'http://127.0.0.1:9225/json/list'
$tab = $tabs | Where-Object { $_.url -like 'http://127.0.0.1:8765/*' } | Select-Object -First 1
if (-not $tab) { throw 'The isolated local preview tab is not available.' }
$socket = New-Object System.Net.WebSockets.ClientWebSocket
$socket.ConnectAsync([uri]$tab.webSocketDebuggerUrl, [Threading.CancellationToken]::None).GetAwaiter().GetResult() | Out-Null
$script:messageId = 0
function Send-CDP([string]$Method, $Parameters = @{}) {
    $script:messageId++
    $payload = @{id=$script:messageId;method=$Method;params=$Parameters} | ConvertTo-Json -Depth 20 -Compress
    $bytes = [Text.Encoding]::UTF8.GetBytes($payload)
    $socket.SendAsync([ArraySegment[byte]]::new($bytes), [Net.WebSockets.WebSocketMessageType]::Text, $true, [Threading.CancellationToken]::None).GetAwaiter().GetResult() | Out-Null
    do {
        $message = New-Object Text.StringBuilder
        do {
            $buffer = New-Object byte[] 65536
            $received = $socket.ReceiveAsync([ArraySegment[byte]]::new($buffer), [Threading.CancellationToken]::None).GetAwaiter().GetResult()
            [void]$message.Append([Text.Encoding]::UTF8.GetString($buffer, 0, $received.Count))
        } until ($received.EndOfMessage)
        $reply = $message.ToString() | ConvertFrom-Json
        if ($reply.method -eq 'Runtime.exceptionThrown') { throw ($reply.params | ConvertTo-Json -Depth 10) }
    } until ($reply.id -eq $script:messageId)
    if ($reply.error) { throw ($reply.error | ConvertTo-Json) }
    return $reply.result
}
function Evaluate([string]$Expression) {
    $result = Send-CDP 'Runtime.evaluate' @{expression=$Expression;returnByValue=$true;awaitPromise=$true}
    if ($result.exceptionDetails) { throw ($result.exceptionDetails | ConvertTo-Json -Depth 10) }
    return $result.result.value
}
Send-CDP 'Runtime.enable' | Out-Null
Send-CDP 'Network.enable' | Out-Null
Send-CDP 'Network.setCacheDisabled' @{cacheDisabled=$true} | Out-Null
$routes = @('/', '/know-your-exposure/', '/threat-brief/', '/detect-and-monitor/', '/about/', '/samples/', '/samples/exposure-report/', '/samples/threat-briefing/', '/samples/threat-hunt/', '/samples/logging-baseline/')
$results = @()
foreach ($width in @(320, 390, 768, 1440, 1920, 2560)) {
    Send-CDP 'Emulation.setDeviceMetricsOverride' @{width=$width;height=1000;deviceScaleFactor=1;mobile=($width -lt 768)} | Out-Null
    foreach ($route in $routes) {
        Send-CDP 'Page.navigate' @{url=('http://127.0.0.1:8765'+$route)} | Out-Null
        Evaluate 'new Promise(resolve => { if (document.readyState === "complete") resolve(true); else window.addEventListener("load", () => resolve(true), { once: true }); })' | Out-Null
        $metrics = Evaluate '({width: innerWidth, scroll: document.documentElement.scrollWidth, h1: document.querySelectorAll("h1").length, products: document.querySelectorAll(".product-card").length, brokenImages: [...document.images].filter(i => !i.complete || i.naturalWidth === 0).length, menu: getComputedStyle(document.querySelector(".mobile-menu")).display})'
        if ($metrics.width -ne $width -or $metrics.scroll -gt $width -or $metrics.h1 -ne 1 -or $metrics.brokenImages -gt 0) { throw "Layout failed at $width on $route : $($metrics | ConvertTo-Json -Compress)" }
        $container = Evaluate '(() => { const r=document.querySelector("main.wrap").getBoundingClientRect(); return {viewport:document.documentElement.clientWidth,width:r.width,left:r.left,right:r.right,limit:getComputedStyle(document.documentElement).getPropertyValue("--max").trim()}; })()'
        if ($container.limit -ne '1080px') { throw "The root stylesheet settings are not being applied: $($container | ConvertTo-Json -Compress)" }
        if ($width -gt 1080 -and ($container.width -gt 1080 -or [Math]::Abs($container.left - ($container.viewport - $container.right)) -gt 1)) { throw "Desktop content is not constrained and centred at $width on $route" }
        if ($route -eq '/') {
            if ($metrics.products -ne 3) { throw 'Expected exactly three product cards.' }
            if ($width -lt 1000) {
                Evaluate 'document.querySelector(".mobile-menu summary").click()' | Out-Null
                $menu = Evaluate '(() => { const m=document.querySelector(".mobile-menu"); const r=m.querySelector("ul").getBoundingClientRect(); return {open:m.open,left:r.left,right:r.right,top:r.top,links:m.querySelectorAll("a").length}; })()'
                if (-not $menu.open -or $menu.left -lt 0 -or $menu.right -gt $width -or $menu.links -ne 5) { throw 'Mobile menu does not fit.' }
                if ($width -eq 390) {
                    $shot = Send-CDP 'Page.captureScreenshot' @{format='png'}
                    [IO.File]::WriteAllBytes((Join-Path $OutputDirectory 'quirkyit-menu.png'), [Convert]::FromBase64String($shot.data))
                }
                Send-CDP 'Input.dispatchKeyEvent' @{type='keyDown';key='Escape';code='Escape';windowsVirtualKeyCode=27} | Out-Null
                if (Evaluate 'document.querySelector(".mobile-menu").open') { throw 'Escape did not close the menu.' }
                if (-not (Evaluate 'document.activeElement === document.querySelector(".mobile-menu summary")')) { throw 'Focus did not return to the menu.' }
                Evaluate 'document.querySelector(".mobile-menu summary").click(); document.querySelector("h1").click()' | Out-Null
                if (Evaluate 'document.querySelector(".mobile-menu").open') { throw 'Outside click did not close the menu.' }
                Evaluate 'document.querySelector(".mobile-menu summary").click(); document.querySelector(".logo").focus()' | Out-Null
                if (Evaluate 'document.querySelector(".mobile-menu").open') { throw 'Focus leaving the menu did not close it.' }
            }
        }
        if (($route -eq '/' -and $width -in @(390,1440)) -or ($route -eq '/detect-and-monitor/' -and $width -eq 390)) {
            $dimensions = Send-CDP 'Page.getLayoutMetrics'
            $shot = Send-CDP 'Page.captureScreenshot' @{format='png';captureBeyondViewport=$true;clip=@{x=0;y=0;width=$width;height=$dimensions.cssContentSize.height;scale=1}}
            $name = if ($route -eq '/') { "quirkyit-home-$width.png" } else { 'quirkyit-service-mobile.png' }
            [IO.File]::WriteAllBytes((Join-Path $OutputDirectory $name), [Convert]::FromBase64String($shot.data))
        }
        $results += "$width $route OK"
    }
}
$socket.Dispose()
$results
"Passed: $($results.Count) page/viewport combinations; desktop width and centring; root styles; menu keyboard, click and focus behaviour; three visible products; images; no horizontal page overflow."
