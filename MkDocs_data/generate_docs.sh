#!/bin/bash
set -e
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r doc_requirements.txt
mkdocs build
if [[ "$1" == "serve" ]]; then
    mkdocs serve
elif [[ "$1" == "deploy" ]]; then
    mkdocs gh-deploy --clean
else
    echo "✅ Сборка завершена"
fi
