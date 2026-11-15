$content = Get-Content -Path "C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\index.html" -Encoding utf8
Write-Output "Total lines in index.html: $($content.Length)"
$matches = $content | Select-String -Pattern "id=|class=.*tab|miêu tả|flashcard|pic\d"
$matches | Select-Object -First 30 | ForEach-Object { $_.Line.Trim() }
