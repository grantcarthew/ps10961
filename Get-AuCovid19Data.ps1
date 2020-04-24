<#
.SYNOPSIS
  Get Covid-19 data from GitHub for Australia.
.DESCRIPTION
  Long description
.EXAMPLE
  Example of how to use this cmdlet
  123 abc
.OUTPUTS
  Returns an Array is no state selected.
  Returns a PSCustomObject if a state is selected.
.NOTES
  General notes
.PARAMETER State
  Filters the output data by the passed state.
  Valid states include:
    "Australian Capital Territory"
    "New South Wales"
    "Northern Territory"
    "Queensland"
    "South Australia"
    "Tasmania"
    "Victoria"
    "Western Australia"
#>
function acd {
[CmdletBinding()]
param (
  [Parameter(
    Position=0,
    ValueFromPipeline=$true,
    ValueFromPipelineByPropertyName=$true
  )]
  [ValidateSet(
    "Australian Capital Territory",
    "New South Wales",
    "Northern Territory",
    "Queensland",
    "South Australia",
    "Tasmania",
    "Victoria",
    "Western Australia"
  )]
  [String]
  $State = 'All'
)

Write-Host -Object "Start of Get-AuCovid19Data"
Write-Verbose -Message "Getting Covid-19 Data for: $State"

$URI = 'https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv'
Write-Verbose -Message "URI: $URI"
$allRegionCovid19Data = Invoke-RestMethod -Uri $URI | ConvertFrom-Csv

$auCovid19Data = New-Object -TypeName System.Collections.ArrayList

foreach ($region in $allRegionCovid19Data) {
  if ($region."Country/Region" -match "Australia") {
    $auCovid19Data.Add($region) | Out-Null # Removing count data
  }
}

Write-Host -Object "Final processing of Get-AuCovid19Data" -BackgroundColor Green
if ($State -eq 'All') {
  Return $auCovid19Data
}

foreach ($auState in $auCovid19Data) {
  Write-Verbose -Message ("Looping through states: " + $auState."Province/State")
  Write-Debug -Message $auState
  if ($auState."Province/State" -eq $State) {
    Return $auState
  }
}
}