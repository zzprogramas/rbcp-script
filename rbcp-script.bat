for /f "delims=" %%m in (%USERPROFILE%\Documents\makebackup\filestobackup.txt) do (
	if not exist "H:\backup_rbcpy%DATE:~6,4%%%~pm" mkdir "H:\backup_rbcpy%DATE:~6,4%%~pm"
	robocopy "%%m" "H:\backup_rbcpy%DATE:~6,4%%~npxm" /E /DCOPY:DAT /R:1 /W:2 /NP /LOG+:"%TEMP%\robocopylog_%%~nzxm.txt" /UNILOG+:%~dp0error-backup%%~nzxm.txt
)