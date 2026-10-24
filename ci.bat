@echo off
echo Setting up virtual environment...
python -m venv venv
call venv\Scripts\activate

echo Installing dependencies...
python -m pip install --upgrade pip
pip install -r requirements.txt

echo Running tests...
pytest

echo Running application...
python main.py
if %errorlevel% neq 0 exit /b %errorlevel%