#!/bin/bash
set -e
REPO="git@github.com:netkeyok/protemp.git"
TARGET="$1"
if [ -z "$TARGET" ]; then
  echo "❌ Укажите имя проекта: ./clone_and_init.sh my-project"
  exit 1
fi
git clone "$REPO" "$TARGET"
cd "$TARGET"
rm -rf .git
git init
git add .
git commit -m "Initial commit from template"
echo "✅ Новый проект создан в '$TARGET'"
