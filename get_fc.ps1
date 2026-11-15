$c = Get-Content -Path "C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\index.html" -Encoding utf8
$inTab = $false
foreach ($line in $c) {
    if ($line -match 'id="tab-flashcards"') { $inTab = $true }
    if ($inTab) {
        if ($line -match '</section>') { break }
        Write-Output $line
    }
}
