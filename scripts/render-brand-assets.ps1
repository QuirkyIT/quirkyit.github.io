# Render the code-designed brand assets. Run from Windows PowerShell.
Add-Type -AssemblyName System.Drawing
$siteRoot = Split-Path -Parent $PSScriptRoot
$card = New-Object System.Drawing.Bitmap(1200, 630)
$graphics = [System.Drawing.Graphics]::FromImage($card)
$graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$graphics.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::AntiAliasGridFit
$graphics.Clear([System.Drawing.Color]::White)
$blue = New-Object System.Drawing.SolidBrush([System.Drawing.ColorTranslator]::FromHtml('#1d4ed8'))
$ink = New-Object System.Drawing.SolidBrush([System.Drawing.ColorTranslator]::FromHtml('#0f172a'))
$grey = New-Object System.Drawing.SolidBrush([System.Drawing.ColorTranslator]::FromHtml('#5b6475'))
$white = [System.Drawing.Brushes]::White
$heading = New-Object System.Drawing.Font('Segoe UI', 64, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Pixel)
$body = New-Object System.Drawing.Font('Segoe UI', 30, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Pixel)
$brandLogo = [System.Drawing.Image]::FromFile((Join-Path $siteRoot 'img\Logo.png'))
$graphics.DrawImage($brandLogo, 70, 45, 280, 90)
$graphics.DrawString('A harder target.', $heading, $ink, 66, 212)
$graphics.DrawString('A smarter security spend.', $heading, $ink, 66, 294)
$graphics.DrawString('Exposure reports. Threat advice. Hunt & prepare.', $body, $grey, 70, 410)
$graphics.FillRectangle($blue, 0, 535, 1200, 95)
$graphics.DrawString('quirkyit.com.au', $body, $white, 70, 560)
$card.Save((Join-Path $siteRoot 'img\social-card.png'), [System.Drawing.Imaging.ImageFormat]::Png)
$brandLogo.Dispose(); $graphics.Dispose(); $card.Dispose()
# Reuse the original shield artwork, excluding the wordmark. Keep transparency
# and its original proportions; centre the 358 x 449 crop in a square favicon.
$logoSource = [System.Drawing.Bitmap]::FromFile((Join-Path $siteRoot 'img\Logo.png'))
$shield = $logoSource.Clone([System.Drawing.Rectangle]::new(0, 0, 358, 449), [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
$shieldStream = New-Object System.IO.MemoryStream
$shield.Save($shieldStream, [System.Drawing.Imaging.ImageFormat]::Png)
$shieldData = [Convert]::ToBase64String($shieldStream.ToArray())
# The SVG embeds the original raster artwork, rather than an approximation.
$svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 449 449"><image x="45.5" y="0" width="358" height="449" href="data:image/png;base64,' + $shieldData + '"/></svg>'
[IO.File]::WriteAllText((Join-Path $siteRoot 'favicon.svg'), $svg, [Text.UTF8Encoding]::new($false))
$sizes = @(16, 32, 48, 64, 128, 256)
$frames = @()
foreach ($size in $sizes) {
    $iconBitmap = [System.Drawing.Bitmap]::new($size, $size, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
    $ig = [System.Drawing.Graphics]::FromImage($iconBitmap)
    $ig.Clear([System.Drawing.Color]::Transparent)
    $ig.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $ig.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $iconWidth = [single]($size * 358 / 449)
    $ig.DrawImage($shield, [single](($size - $iconWidth) / 2), [single]0, $iconWidth, [single]$size)
    $pngStream = New-Object System.IO.MemoryStream
    $iconBitmap.Save($pngStream, [System.Drawing.Imaging.ImageFormat]::Png)
    $frames += ,($pngStream.ToArray())
    $pngStream.Dispose(); $ig.Dispose(); $iconBitmap.Dispose()
}
$icoStream = [System.IO.File]::Create((Join-Path $siteRoot 'favicon.ico'))
$writer = New-Object System.IO.BinaryWriter($icoStream)
$writer.Write([uint16]0); $writer.Write([uint16]1); $writer.Write([uint16]$sizes.Count)
$offset = 6 + 16 * $sizes.Count
for ($index = 0; $index -lt $sizes.Count; $index++) {
    $dimension = if ($sizes[$index] -eq 256) { 0 } else { $sizes[$index] }
    $writer.Write([byte]$dimension); $writer.Write([byte]$dimension)
    $writer.Write([byte]0); $writer.Write([byte]0)
    $writer.Write([uint16]1); $writer.Write([uint16]32)
    $writer.Write([uint32]$frames[$index].Length); $writer.Write([uint32]$offset)
    $offset += $frames[$index].Length
}
foreach ($frame in $frames) { $writer.Write([byte[]]$frame) }
$writer.Dispose(); $shieldStream.Dispose(); $shield.Dispose(); $logoSource.Dispose()
$heading.Dispose(); $body.Dispose(); $blue.Dispose(); $ink.Dispose(); $grey.Dispose()
