Add-Type -AssemblyName System.Drawing
$images = Get-ChildItem -Path "C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\images\*.jpg"
foreach ($img in $images) {
    try {
        $bmp = [System.Drawing.Bitmap]::FromFile($img.FullName)
        Write-Output "$($img.Name): $($bmp.Width) x $($bmp.Height)"
        $bmp.Dispose()
    } catch {
        Write-Output "$($img.Name): could not read dimensions"
    }
}
