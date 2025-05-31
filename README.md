# 📘 ProTemp — Шаблон документации для Python-проектов

Шаблон репозитория с автогенерацией документации на базе [MkDocs](https://www.mkdocs.org/) + [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/). Подходит для быстрого старта, особенно если необходимо сопровождать Python-код удобной, чистой и легко расширяемой документацией.

---

## 🔧 Состав

- 📚 **MkDocs Material** — стильная документация
- 🧠 **mkdocstrings** — автодокументация Python-кода
- 🧼 **Black**, **Flake8** — автоформатирование и линтинг
- 🧾 **Mermaid** — поддержка диаграмм
- 📂 Вся документация хранится в `docs/`

---

## 🚀 Быстрый старт

### Шаг 1: Клонировать шаблон

```bash
git clone git@github.com:netkeyok/protemp.git my-project
cd my-project
```

Или автоматизировано:

```bash
./clone_and_init.sh my-project     # Linux/macOS
:: или
clone_and_init.bat my-project      :: Windows
```

### Шаг 2: Установить зависимости и запустить локально

```bash
./generate_docs.sh serve      # Linux/macOS
:: или
generate_docs.bat serve       :: Windows
```

После этого сайт будет доступен по адресу http://127.0.0.1:8000

---

## 🛠 Инструменты

Установятся автоматически через `doc_requirements.txt`:

- `mkdocs`
- `mkdocs-material`
- `mkdocstrings[python]`
- `mkdocs-mermaid2-plugin`
- `pymdown-extensions`
- `black`, `flake8`

---

## 🧪 Проверка и форматирование Python-кода

```bash
black .
flake8 .
```

---

## 📄 Структура проекта

```
📦 my-project/
├── docs/                  # Вся документация
│   ├── index.md           # Главная страница
│   └── reference.md       # API-документация
├── mkdocs.yml             # Конфигурация MkDocs
├── doc_requirements.txt   # Зависимости для документации
├── generate_docs.sh       # Сборка / запуск (Linux/macOS)
├── generate_docs.bat      # Сборка / запуск (Windows)
├── init_prompt.md         # Промт для ИИ/ассистентов
└── .gitignore
```

---

## 🧠 Использование в ИИ-сценариях

Файл `init_prompt.md` содержит инструкции, которые можно использовать в интеграции с AI/LLM для генерации, обновления и ведения документации и кода.

---

## ⚙️ Автоматизация запуска нового проекта

Скрипты:

```bash
./clone_and_init.sh <имя-проекта>      # Linux/macOS
clone_and_init.bat <имя-проекта>       # Windows
```

### Скачать скрипты отдельно:

- **Linux/macOS**: [clone_and_init.sh](https://raw.githubusercontent.com/netkeyok/protemp/refs/heads/main/clone_and_init.sh)
- **Windows**: [clone_and_init.bat](https://raw.githubusercontent.com/netkeyok/protemp/refs/heads/main/clone_and_init.bat)

### Что делают скрипты:

- Клонируют шаблон
- Удаляют старую `.git`-историю
- Создают чистый проект с новой инициализацией Git

---

## 📬 Обратная связь

Отсутствует :-)
