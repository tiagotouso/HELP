echo off
cls
:menu
echo -------------------------------------
echo       INSTALADOR DE PROGRAMAS
echo -------------------------------------
echo.
echo 	1) Instalar software basicos
echo 	2) Instalar software graficos
echo 	3) Instalar software programacao
echo 	4) Instalar software texto
echo 	5) Instalar antivirus
echo 	6) Sair
echo.
echo -------------------------------------
echo.
echo.

set /p op= Digete sua opcao?
if %op% equ 1 (goto:bat1)
if %op% equ 2 (goto:bat2)
if %op% equ 3 (goto:bat3)
if %op% equ 4 (goto:bat4)
if %op% equ 5 (goto:bat5)
if %op% equ 6 (goto:bat6)

:bat1
echo -------------------------------------
echo       INSTALADOR DE BASICOS
echo -------------------------------------
echo.
choco install -y winrar adobereader googlechrome firefox libreoffice-still choco install git.install github-desktop utorrent
pause
goto menu

:bat2
echo -------------------------------------
echo       INSTALADOR DE GRAFICOS
echo -------------------------------------
echo.
choco install -y obs-studio audacity openshot vlc freecad gimp inkscape
goto menu

:bat3
echo -------------------------------------
echo       INSTALADOR DE PROGRAMAS
echo -------------------------------------
echo.
choco install -y python anaconda3 pycharm-edu vscode nodejs r rtools r.studio mysql
goto menu

:bat4
echo -------------------------------------
echo       INSTALADOR DE PROCESSADOR
echo -------------------------------------
echo.
choco install -y pandoc miktex texstudio.install
goto:menu


:bat5
echo -------------------------------------
echo       INSTALADOR DE ANTIVIRUS
echo -------------------------------------
echo.
choco install -y avastfreeantivirus
pause
goto:menu


:bat6
echo sair
echo -------------------------------------
echo -------------------------------------
pause


