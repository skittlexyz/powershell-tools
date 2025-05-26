Stop-Process -Name explorer -Force
Start-Process -FilePath "C:\Windows\explorer.exe"
Write-Host -f Yellow "explorer.exe reseted successfully.`n"