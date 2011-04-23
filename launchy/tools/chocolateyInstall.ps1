﻿try {
  Get-ChildItem 'C:\NuGet\chocolateyInstall\helpers' -Filter *.psm1 | ForEach-Object { import-module -name  $_.FullName }
  Install-ChocolateyPackage 'launchy' 'exe' '/silent' 'http://www.launchy.net/downloads/win/Launchy2.5.exe'
} catch {
@"
Error Occurred: $($_.Exception.Message)
"@ | Write-Host -ForegroundColor White -BackgroundColor DarkRed
	Start-Sleep 5
	throw 
}