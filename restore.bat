@echo off

for /f "tokens=1-3 delims=/ " %%a in ('date /t') do set FECHA=%%c%%b%%a
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set HORA=%%a%%b
C:
cd "Program Files"/7-zip
7z.exe x -o"C:\Users\Jorge\Desktop\Seguridad" C:\Users\Jorge\Desktop\Seguridad_Backup.zip
pause
msg * La restauracion fue exitosa
explorer C:\Users\Jorge\Desktop\Seguridad