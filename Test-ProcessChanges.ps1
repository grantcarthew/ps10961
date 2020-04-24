
$cachFilePath = 'C:\Code\PS10961\ps.txt'
$cachExists = Test-Path -Path $cachFilePath
if (!$cachExists) {
  $processNames | Out-File -FilePath 'C:\Code\PS10961\ps.txt'
}
$processNames = Get-Process | Select-Object -ExpandProperty ProcessName -Unique

$newProcessNames

do {
  Start-Sleep -Seconds 3
  Out-Host -InputObject "Getting processes..."
  $newProcessNames = Get-Process | Select-Object -ExpandProperty ProcessName -Unique
} while ($processNames.length -eq $newProcessNames.length)

Out-Host -InputObject "$($processNames.length) vs $($newProcessNames.length)"