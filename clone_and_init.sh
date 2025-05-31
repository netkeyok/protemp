#!/bin/bash
set -e
REPO="https://github.com/netkeyok/protemp.git"
TARGET="$1"
if [ -z "$TARGET" ]; then
  echo "❌ Укажите имя проекта: ./clone_and_init.sh my-project"
  exit 1
fi
git clone "$REPO" "$TARGET"
cd "$TARGET"
rm -rf .git

# Создаем структуру MkDocs_data
mkdir -p MkDocs_data
mv docs MkDocs_data/
mv mkdocs.yml MkDocs_data/
mv doc_requirements.txt MkDocs_data/
mv generate_docs.sh MkDocs_data/
mv generate_docs.bat MkDocs_data/

# Добавляем MkDocs_data/ в .gitignore
echo "MkDocs_data/" >> .gitignore

git init
git add .
python3 -m venv .venv
source .venv/bin/activate
pip install -r MkDocs_data/doc_requirements.txt
git commit -m "Initial commit from template"
echo "✅ Новый проект создан в '$TARGET'"
echo "✅ Виртуальное окружение создано и зависимости установлены."
echo "✅ Файлы MkDocs перемещены в папку MkDocs_data/"
