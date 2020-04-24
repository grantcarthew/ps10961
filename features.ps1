$processes = Get-Process
$result = New-Object -TypeName System.Collections.ArrayList

foreach ($process in $processes) {
  $message = "$($process.Name) has a silly metric of: " + ($process.CPU * $process.VM)
  $result.Add($message) | Out-Null
}

Return $result

$condition = 0 

if ($condition) {
  "is somthing, don't know what!!"
} elseif ($condition -eq 'cat') {
  "is cat"
} elseif ($condition -eq 'dog') {
  "is dog"
} else {
  "is nothing?"
}

$x = 1
switch ($x) {
  1 { 'Is One'; break  }
  2 { 'Is Two'; break  }
  Default { 'No code' }
}

switch ($x)
{
  'value1' {  }
  {$_ -in 'A','B','C'} {}
  'value3' {}
  Default {}
}

'Looping now........'
for ($i = 0; $i -lt $processes.length; $i++) {
  if ($processes[$i].CPU -gt 200) { break } 
  $processes[$i].ProcessName + ' is at index ' + $i
}

do {
  
} until (condition)

do {
  
} while (condition)

while (condition) {
  
}

for ($i = $array.Count - 1; $i -ge 0 ; $i--) {
  
}

