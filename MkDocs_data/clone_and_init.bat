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

REM Перемещаем README.md в MkDocs_data
if exist "README.md" (
    move README.md MkDocs_data\README.md
) else (
    echo ⚠️ README.md не найден
)

REM Перемещаем py_gitignore в корень из MkDocs_data, под названием .gitignore
if exist "MkDocs_data\py_gitignore" (
    move MkDocs_data\py_gitignore .gitignore
    REM Добавляем MkDocs_data/ в .gitignore
    echo MkDocs_data/ >> .gitignore
) else (
    echo ⚠️ py_gitignore не найден
    REM Создаем .gitignore с MkDocs_data/ если py_gitignore не найден
    echo MkDocs_data/ > .gitignore
)

git init
git add .
python -m venv .venv
call .venv\Scripts\activate.bat
pip install -r MkDocs_data\doc_requirements.txt
git commit -m "Initial commit from template"
echo ✅ Новый проект создан в "%TARGET%"
echo ✅ Виртуальное окружение создано и зависимости установлены.
echo ✅ Файлы MkDocs перемещены в папку MkDocs_data/
