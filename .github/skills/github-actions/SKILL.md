# Skill: github-actions

## Description
Створює кросплатформедині скрипти збірки (`ci.sh`, `ci.bat`) та конфігурацію `.github/workflows/ci.yml`.

## Input & Output
- **Input:** Матриця ОС (Windows, Linux, macOS).
- **Output:** `ci.sh`, `ci.bat`, `.github/workflows/ci.yml`.

## Verifications & Errors
- Переконатися, що workflow викликає скрипти збірки, а не виконує команди напряму.