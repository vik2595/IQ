$date = get-date
$name = (Get-WmiObject Win32_Computersystem).name
$ip = Test-Connection -ComputerName (hostname) -Count 1  | Select IPV4Address
$cpu_usage = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average ).Average
$total_processes = get-service | Measure-Object -Line
$running_process = Get-Service | Where-Object {$_.Status -eq "Running"} | Measure-Object -Line
Write-Host `nCurrent Date:- 
format-list -InputObject $date
Write-Host `nDevice Name:-
format-list -InputObject $name
Write-Host `nIP Address:-
format-list -InputObject $ip
Write-Host `nCPU Usage:-
format-list -InputObject $cpu_usage
Write-Host `nTotal installed processes:-
format-list -InputObject $total_processes
Write-Host `nTotal running processes:-
format-list -InputObject $running_process