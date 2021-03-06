﻿$packageName = 'linqpad4.portable'
$url = 'http://www.linqpad.net/GetFile.aspx?preview+LINQPad4.zip'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
