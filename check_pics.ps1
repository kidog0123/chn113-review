$c = Get-Content -Path "C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\index.html" -Encoding utf8
$inPic = $false
$currentCard = ""
foreach ($line in $c) {
    if ($line -match 'class="pic-card"') {
        $inPic = $true
        Write-Output "--- NEW CARD ---"
    }
    if ($inPic) {
        if ($line -match 'img src=|<h3>|<div class="pic-zh-box">|<div class="pic-py-box">|<p class="pic-desc-vn">') {
            Write-Output $line.Trim()
        }
        if ($line -match '</article>') {
            $inPic = $false
        }
    }
}
