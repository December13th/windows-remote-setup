$parsecUrl = "https://builds.parsecgaming.com/package/parsec-windows.exe"
$installerPath = "C:\Windows\Temp\parsec-windows.exe"
Invoke-WebRequest -Uri $parsecUrl -OutFile $installerPath
Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait
Remove-Item $installerPath
Start-Process "C:\Program Files\Parsec\parsec.exe"
