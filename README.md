# Лабораторна робота № 1
**Тема:** Проєктування AI-агента для автоматизації розробки та CI/CD  
**Студент:** Петрів Станіслав Олександрович  
**Варіант:** 20. № 2 (Python, venv + скрипт запуску, pytest)

## Опис проєкту
Проєкт реалізує спеціалізованого AI-агента (Build Engineer), який автоматизує створення кросплатформеного Python-застосунку Hello World, налаштування віртуального середовища `venv`, модульне тестування за допомогою `pytest` та CI/CD конвеєр у GitHub Actions.

## Запуск локально

### Windows (cmd)
```bat
python -m venv .venv
call .venv\Scripts\activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pytest
python main.py
```

### Linux / macOS (bash)
```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pytest
python main.py
```

Альтернативно можна запускати готові скрипти:
- Linux/macOS: `./ci.sh`
- Windows: `ci.bat`
