#!/bin/bash
set -e
echo "Setting up virtual environment..."
python3 -m venv venv
source venv/bin/activate

echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Running tests..."
pytest

echo "Running application..."
python main.py