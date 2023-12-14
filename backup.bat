@echo off

for /f "tokens=1-3 delims=/ " %%a in ('date /t') do set FECHA=%%c%%b%%a
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set HORA=%%a%%b

set BACKUP_LOG_FILE=C:/Users/Jorge/Desktop/Backup_Log_%FECHA%.log
set link="Program Files"/7-zip

echo. >> %BACKUP_LOG_FILE%
echo Inicia respaldo >> %BACKUP_LOG_FILE%
echo %FECHA% %HORA% >> %BACKUP_LOG_FILE%
C:
cd %link%
7z.exe a -tzip C:\Users\Jorge\Desktop\Seguridad_Backup C:/Users/Jorge/Desktop/Seguridad/* >> %BACKUP_LOG_FILE%
echo. >> %BACKUP_LOG_FILE%
echo Fin respaldo >> %BACKUP_LOG_FILE%
echo %FECHA% %HORA% >> %BACKUP_LOG_FILE%
echo _________________________________________ >> %BACKUP_LOG_FILE%
echo Log file: %BACKUP_LOG_FILE%
pause
msg * La copia de Seguridad se realizo correctamente