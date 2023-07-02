@echo off
REM PROGRAMA PARA ABRIR MODO DESENVOLVIMENTO

%windir%\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy ByPass -NoExit -Command "& 'C:\tools\Anaconda3\shell\condabin\conda-hook.ps1' ; conda activate 'C:\tools\Anaconda3' "

cd C:\Users\User\Documents\TIAGO_TOUSO\_OUVIDORIA\PYTHON

cls
