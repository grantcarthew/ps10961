$defaultRouteNic = Get-NetRoute -DestinationPrefix 0.0.0.0/0 | Sort-Object -Property RouteMetric | Select-Object -ExpandProperty ifIndex
$ipv4 = Get-NetIPAddress -AddressFamily IPv4 -InterfaceIndex $defaultRouteNic | Select-Object -ExpandProperty IPAddress
Return $ipv4
