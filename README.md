# Clean-Nettoyer-Solution-Visual-Studio-2008-2013
Clean a solution of VS2008-VS2013  / Nettoyer une solution du VS2008-VS2013  
1- Put the batfile Clean.bat and execute it in your folder of a solution or in the folder where there are several solutions. 
/ Mettez et exécutez le batfile Clean.bat dans un répertoire d'une solution ou dans un dossier qui contient plusieurs solutions.  
2- It deletes all of the debug folders and release files, etc. You can check and modify them below:
/ Il supprime tous les répertoires de déboguer ainsi les fichiers de releaser. Vous pourriez les consulter et modifier au-dessous:  

//Clean.bat  
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
