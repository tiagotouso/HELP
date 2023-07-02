@echo off
REM PROGRAMA PARA CRIAR AMBIENTE VIRTUAL

REM CRIAR ARQUIVO TEMPORÁRIO
echo python -m venv venv > temp.bat
echo call venv\Scripts\activate.bat >> temp.bat
echo python -m pip install --upgrade pip >> temp.bat
set "caminho=%CD%\temp.bat"
echo del %caminho% >> temp.bat

REM EXECUTAR O ARQUIVO TEMPORÁRIO
cmd /k temp.bat
