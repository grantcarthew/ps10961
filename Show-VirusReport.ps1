[CmdLetBinding()]
Param ()

$logPath = 'C:\Code\PS10961\Log.txt'
Start-Transcript -Path $logPath

Write-Host -Object "Building Virus Report"

$pwd = Get-Location | Select-Object -ExpandProperty Path
$Env:Path = $Env:Path + ';' + $pwd

Write-Host -Object 'Start of Get'
try {
  throw 'oops'
  $waData = Get-AuCovid19Data -State 'Western Australia'
}
catch {
  Write-Host -Object "Oop error: " + $error[0].exception.message  
}
finally {
  Write-Host -Object 'Finally block'
  
}
Write-Host -Object 'End of Get'

#$ip = Get-ActiveIpAddress

Write-Host -Object 'Start of waData'
$waData
Write-Host -Object 'End of waData'

Write-Host -Object "Virus Report Completed."

Stop-Transcript
