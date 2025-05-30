@echo off
set REPO=git@github.com:netkeyok/protemp.git
set TARGET=%1
if "%TARGET%"=="" (
  echo ❌ Укажите имя проекта: clone_and_init.bat my-project
  exit /b 1
)
git clone %REPO% %TARGET%
cd %TARGET%
rmdir /S /Q .git
git init
git add .
git commit -m "Initial commit from template"
echo ✅ Новый проект создан в "%TARGET%"
