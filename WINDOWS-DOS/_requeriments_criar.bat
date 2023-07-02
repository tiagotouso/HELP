@echo off
REM PROGRAMA PARA CRIAR O ARQUIVO REQUERIMENTS

call venv\Scripts\activate.bat
pip freeze > requirements.txt
