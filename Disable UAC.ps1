
#Disalbe UAC
#Need Admin Privillige
#Coded By Karem Ali

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(

   [Security.Principal.WindowsBuiltInRole] “Administrator”))

{

 Write-Warning “You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!”

 Pause
 Break

}

$path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$value_Dis = 0
$Value_En = 1

echo " Insert 1 To Disable , 2 To Enabel UAC "
[string]$option = read-host "Enter"
if($option -eq 1 )
{
set-ItemProperty -Path  $path -Name EnableLUA  -Value $Value_Dis 
Pause
}
elseif($option -eq 2 )
{

set-ItemProperty -Path  $path -Name EnableLUA  -Value $Value_En

}
else
{
echo " UnValid OPTion "
}