@echo off
set REPO=https://github.com/netkeyok/protemp.git
set TARGET=%1
if "%TARGET%"=="" (
  echo ❌ Укажите имя проекта: clone_and_init.bat my-project
  exit /b 1
)
git clone %REPO% %TARGET%
cd %TARGET%
rmdir /S /Q .git

REM Перемещаем README.md и doc_requirements.txt в MkDocs_data
if exist "README.md" (
    move README.md MkDocs_data\README.md
REM    copy MkDocs_data\README.md README.md
) else (
    echo ⚠️ README.md не найден
)

if exist "doc_requirements.txt" (
    move doc_requirements.txt MkDocs_data\doc_requirements.txt
) else (
    echo ⚠️ doc_requirements.txt не найден
)

REM Добавляем MkDocs_data/ в .gitignore
echo MkDocs_data/ >> .gitignore

git init
git add .
python -m venv .venv
call .venv\Scripts\activate.bat
pip install -r MkDocs_data\doc_requirements.txt
git commit -m "Initial commit from template"
echo ✅ Новый проект создан в "%TARGET%"
echo ✅ Виртуальное окружение создано и зависимости установлены.
echo ✅ Файлы MkDocs перемещены в папку MkDocs_data/
