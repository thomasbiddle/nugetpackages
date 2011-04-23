try {
  Get-ChildItem 'C:\NuGet\chocolateyInstall\helpers' -Filter *.psm1 | ForEach-Object { import-module -name  $_.FullName }
  Install-ChocolateyPackage 'aspnetmvc' 'exe' '' 'http://www.microsoft.com/downloads/info.aspx?na=46&SrcFamilyId=D2928BC1-F48C-4E95-A064-2A455A22C8F6&SrcDisplayLang=en&u=http%3a%2f%2fdownload.microsoft.com%2fdownload%2f3%2f4%2fA%2f34A8A203-BD4B-44A2-AF8B-CA2CFCB311CC%2fAspNetMVC3Setup.exe' 
  #/q but it takes forever....
} catch {
@"
Error Occurred: $($_.Exception.Message)
"@ | Write-Host -ForegroundColor White -BackgroundColor DarkRed
	Start-Sleep 5
	throw 
}