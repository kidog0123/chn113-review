$s = Get-Content 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\sentences.json' -Raw -Encoding utf8 | ConvertFrom-Json
Write-Output "Total sentences: $($s.Count)"
$groups = $s | Group-Object bai
foreach ($g in $groups) {
    Write-Output "$($g.Name): $($g.Count) câu"
}
$s | Select-Object -First 3 | ConvertTo-Json
