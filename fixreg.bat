
@rem for reg command, see https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc742162(v=ws.11)

reg add HKCU\Software\Classes\*\shell\Vim /f /d "Edit with &Vim Tab"
reg add HKCU\Software\Classes\*\shell\Vim\command /f /d "\"%userprofile%\scoop\apps\vim\current\gvim.exe\" -p --remote-tab-silent \"%%1\" \"%%*\""

@pause
