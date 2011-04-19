push-location
$here = (Split-Path -parent $MyInvocation.MyCommand.Definition)
set-location $here
import-module -name .\PsRemoteFiles\PsRemoteFiles.psm1
$cred = Get-Credential
$comp = "localhost"

Copy-RemoteItem Tests.ps1 -Credential $cred -ComputerName $comp -Verbose

pop-location