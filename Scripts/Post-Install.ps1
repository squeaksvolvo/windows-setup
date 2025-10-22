Write-Host "Applying some windows tweaks."

Write-Host "Set Taskbar Alignment: Left..."
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarAl" -Value 0

Write-Host "Set Taskbar to combine buttons and hide labels, <<When Taskbar is Full>>"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarGlomLevel" -Value 1

Write-Host "Show hidden files and folders."
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "Hidden" -Value 1

Write-Host "Show file extensions"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "HiddenFileExt" -Value 0


Write-Host "Restarting Explorer to apply taskbar settings"
Stop-Process -Name explorer -Force
#Start-Process explore

Write-Host
Write-Host "Finished, press any key"
[System.Console]::ReadKey()
