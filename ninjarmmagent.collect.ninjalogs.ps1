## Universal PowerShell Script to Collect NinjaRMMAgent Logs
## Created by bu11etpr00f 2019.10.01
## 

## Set ninjarmmagent.exe Location
$exeLocation = Get-ChildItem -Path "C:\Program Files (x86)\" -Recurse -Depth 1 -Include "ninjarmmagent.exe" | Select-Object -First 1

## Set Command Paramaters
$exeArguments = "/collectlogs"

## Run Command
Start-Process $exeLocation $exeArguments
