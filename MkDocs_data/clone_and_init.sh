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

# Перемещаем README.md и doc_requirements.txt в MkDocs_data
if [ -f "README.md" ]; then
    mv README.md MkDocs_data/README.md
#    cp MkDocs_data/README.md README.md
else
    echo "⚠️ README.md не найден"
fi

if [ -f "doc_requirements.txt" ]; then
    mv doc_requirements.txt MkDocs_data/doc_requirements.txt
else
    echo "⚠️ doc_requirements.txt не найден"
fi

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
