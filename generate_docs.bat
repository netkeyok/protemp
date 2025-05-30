@echo off
python -m venv .venv
call .venv\Scripts\activate.bat
pip install --upgrade pip
pip install -r doc_requirements.txt
mkdocs build
if "%1"=="serve" (
    mkdocs serve
) else if "%1"=="deploy" (
    mkdocs gh-deploy --clean
) else (
    echo ✅ Сборка завершена
)
