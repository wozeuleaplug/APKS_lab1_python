@echo off
setlocal
set "VENV_DIR=.venv"

echo Setting up virtual environment...
python -m venv %VENV_DIR%
if errorlevel 1 exit /b %errorlevel%

call %VENV_DIR%\Scripts\activate
if errorlevel 1 exit /b %errorlevel%

echo Installing dependencies...
python -m pip install --upgrade pip
if errorlevel 1 exit /b %errorlevel%

python -m pip install -r requirements.txt
if errorlevel 1 exit /b %errorlevel%

echo Running tests...
python -m pytest
if errorlevel 1 exit /b %errorlevel%

echo Running application...
python main.py
if %errorlevel% neq 0 exit /b %errorlevel%
endlocal