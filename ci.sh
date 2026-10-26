#!/usr/bin/env bash
set -euo pipefail

if command -v python3 >/dev/null 2>&1; then
  PYTHON_BIN=python3
elif command -v python >/dev/null 2>&1; then
  PYTHON_BIN=python
else
  echo "Python interpreter was not found."
  exit 1
fi

VENV_DIR=".venv"
echo "Setting up virtual environment..."
"$PYTHON_BIN" -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"

echo "Installing dependencies..."
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

echo "Running tests..."
python -m pytest

echo "Running application..."
python main.py