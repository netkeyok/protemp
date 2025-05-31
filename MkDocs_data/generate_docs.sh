#!/bin/bash
set -e
cd "$(dirname "$0")"  # Переходим в папку MkDocs_data
cd ..  # Возвращаемся в корень проекта
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r MkDocs_data/doc_requirements.txt
cd MkDocs_data
mkdocs build
if [[ "$1" == "serve" ]]; then
    mkdocs serve
elif [[ "$1" == "deploy" ]]; then
    mkdocs gh-deploy --clean
else
    echo "✅ Сборка завершена"
fi