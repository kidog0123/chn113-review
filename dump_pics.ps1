$c = Get-Content -Path "C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\index.html" -Encoding utf8
$inPic = $false
$buf = @()
foreach ($line in $c) {
    if ($line -match 'class="pic-card"') {
        $inPic = $true
        $buf = @()
    }
    if ($inPic) {
        $buf += $line
        if ($line -match '</article>') {
            $inPic = $false
            Write-Output "========================================"
            $buf -join "`n" | Out-String | Write-Output
        }
    }
}
