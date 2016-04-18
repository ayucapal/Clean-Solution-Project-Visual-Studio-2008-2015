@echo off
echo Debut de nettoyer / Begin of the cleaning
FOR /D /R %%x IN (debug,release,bin,obj,ipch,x86,x64) DO RD /S /Q "%%x" 2>nul
del /S /F /Q /A %cd%\*.suo 2>nul
del /S /F /Q /A %cd%\*.user 2>nul
del /S /F /Q /A %cd%\*.ncb 2>nul
del /S /F /Q /A %cd%\*.sbr 2>nul
del /S /F /Q /A %cd%\*.log 2>nul
del /S /F /Q /A %cd%\*.sdf 2>nul
del /S /F /Q /A %cd%\*.filters 2>nul
echo Fin de nettoyer / End of the cleaning
echo. & pause 
