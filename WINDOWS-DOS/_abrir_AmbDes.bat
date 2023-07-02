@echo off
REM PROGRAMA PARA ABRIR AMBIENTE DESENVOLVIMENTO

REM CRIAR ARQUIVO TEMPORÁRIO
echo call venv\Scripts\activate.bat > temp.bat
echo del temp.bat >> temp.bat

REM EXECUTAR O ARQUIVO TEMPORÁRIO
cmd /k temp.bat
