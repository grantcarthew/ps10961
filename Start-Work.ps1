[CmdLetBinding()]
Param (
  [Parameter(Position=0)]
  $Ammount = 10
)
$count = 0
While ($count -lt $Ammount) {
  Get-Random
  Start-Sleep -Seconds 1
  $count++
}


start-job looping somehow?
get-job | wait-job
get-job | receive-job