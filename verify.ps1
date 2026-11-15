$c = Get-Content 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\cards.json' -Raw -Encoding utf8 | ConvertFrom-Json
foreach ($item in $c) {
    Write-Output "[$($item.num)] $($item.title) -> $($item.char_count) chữ, $($item.sentence_count) câu"
    Write-Output "   ZH: $($item.full_zh)"
}
