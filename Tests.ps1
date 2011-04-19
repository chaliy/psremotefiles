push-location
$here = (Split-Path -parent $MyInvocation.MyCommand.Definition)
set-location $here
import-module -name .\PsRemoteFiles\PsRemoteFiles.psm1
$cred = Get-Credential
$comp = "localhost"

Write-Host "Should write file to remote computer"
Copy-RemoteItem Tests.ps1 -Credential $cred -ComputerName $comp -Verbose

Write-Host "Should write file to remote computer using session"
$session = New-PSSession -Credential $cred -ComputerName $comp 
Copy-RemoteItem Tests.ps1 -Session $session -Verbose

pop-location