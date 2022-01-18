echo off
cls
echo -------------------------------------
echo       COPIAR DRIVER DO WINDOWS
echo -------------------------------------

mkdir c:\driver_backup

dism /online /export-driver /destination:C:\driver_backup

echo -------------------------------------
echo -------------------------------------

