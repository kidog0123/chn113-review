# Read JSON data
$sentencesJson = Get-Content 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\sentences.json' -Raw -Encoding utf8
$vocabJson = Get-Content 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\vocab.json' -Raw -Encoding utf8
$cardsJson = Get-Content 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\cards.json' -Raw -Encoding utf8

Write-Output "Sentences length: $($sentencesJson.Length)"
Write-Output "Vocab length: $($vocabJson.Length)"
Write-Output "Cards length: $($cardsJson.Length)"
