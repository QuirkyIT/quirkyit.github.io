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
$graphics.DrawString('Cyber security,', $heading, $ink, 66, 212)
$graphics.DrawString('IT and AI for business.', $heading, $ink, 66, 294)
$graphics.DrawString('Practical help for Moreton Bay and North Brisbane.', $body, $grey, 70, 410)
$graphics.FillRectangle($blue, 0, 535, 1200, 95)
$graphics.DrawString('quirkyit.com.au', $body, $white, 70, 560)
$card.Save((Join-Path $siteRoot 'img\social-card.png'), [System.Drawing.Imaging.ImageFormat]::Png)
$brandLogo.Dispose(); $graphics.Dispose(); $card.Dispose()
# ICO contains a PNG frame; the SVG remains the scalable primary favicon.
$iconBitmap = New-Object System.Drawing.Bitmap(32,32)
$ig = [System.Drawing.Graphics]::FromImage($iconBitmap)
$ig.Clear([System.Drawing.ColorTranslator]::FromHtml('#1d4ed8'))
$ig.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::AntiAliasGridFit
$iconFont = New-Object System.Drawing.Font('Arial', 27, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Pixel)
$ig.DrawString('Q', $iconFont, $white, 2, 0)
$pngStream = New-Object System.IO.MemoryStream
$iconBitmap.Save($pngStream, [System.Drawing.Imaging.ImageFormat]::Png)
$png = $pngStream.ToArray()
$icoStream = [System.IO.File]::Create((Join-Path $siteRoot 'favicon.ico'))
$writer = New-Object System.IO.BinaryWriter($icoStream)
$writer.Write([uint16]0); $writer.Write([uint16]1); $writer.Write([uint16]1)
$writer.Write([byte]32); $writer.Write([byte]32); $writer.Write([byte]0); $writer.Write([byte]0)
$writer.Write([uint16]1); $writer.Write([uint16]32); $writer.Write([uint32]$png.Length); $writer.Write([uint32]22)
$writer.Write($png); $writer.Dispose(); $pngStream.Dispose()
$ig.Dispose(); $iconBitmap.Dispose(); $iconFont.Dispose()
$heading.Dispose(); $body.Dispose(); $blue.Dispose(); $ink.Dispose(); $grey.Dispose()
