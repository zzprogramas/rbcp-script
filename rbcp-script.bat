for /f "delims=" %%m in (C:\Users\usuario\Desktop\makebackup\filestobackup.txt) do (
	if not exist "H:\backup_rbcpy2022%%~pm" mkdir "H:\backup_rbcpy2022%%~pm"
	robocopy "%%m" "H:\backup_rbcpy2022%%~npxm" /E /DCOPY:DAT /R:1 /W:2 /NP /LOG+:"C:\temp01\robocopylog_%%~nzxm.txt"
)