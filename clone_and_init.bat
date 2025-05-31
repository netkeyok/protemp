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

REM Создаем структуру MkDocs_data
mkdir MkDocs_data
move docs MkDocs_data\
move mkdocs.yml MkDocs_data\
move doc_requirements.txt MkDocs_data\
move generate_docs.sh MkDocs_data\
move generate_docs.bat MkDocs_data\

REM Добавляем MkDocs_data/ в .gitignore
echo MkDocs_data/ >> .gitignore

git init
git add .
python -m venv .venv
call .venv\Scripts\activate.bat
pip install --upgrade pip
pip install -r MkDocs_data\doc_requirements.txt
git commit -m "Initial commit from template"
echo ✅ Новый проект создан в "%TARGET%"
echo ✅ Виртуальное окружение создано и зависимости установлены.
echo ✅ Файлы MkDocs перемещены в папку MkDocs_data/
