Add-Type -AssemblyName System.IO.Compression.FileSystem
$docx = 'C:\Users\ADMIN\.gemini\antigravity\brain\c952d341-3f7a-45b1-92e5-66d6a3ca62fe\.user_uploaded\media_1794754308223_a037bca6.docx'
$zip = [System.IO.Compression.ZipFile]::OpenRead($docx)
$entry = $zip.GetEntry('word/document.xml')
$stream = $entry.Open()
$reader = New-Object System.IO.StreamReader($stream, [System.Text.Encoding]::UTF8)
$xmlText = $reader.ReadToEnd()
$reader.Close()
$stream.Close()
$zip.Dispose()

[xml]$doc = $xmlText
$ns = New-Object System.Xml.XmlNamespaceManager($doc.NameTable)
$ns.AddNamespace('w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')
$nodes = $doc.SelectNodes('//w:p', $ns)
$lines = @()
foreach ($node in $nodes) {
    $sub = $node.SelectNodes('.//w:t', $ns)
    $t = ($sub | ForEach-Object { $_.InnerText }) -join ''
    if ($t.Trim()) { $lines += $t.Trim() }
}
$lines | Select-Object -First 50
$lines | Out-File -FilePath 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\docx_content.txt' -Encoding utf8
Write-Output "Total lines: $($lines.Count)"
