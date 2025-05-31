# 📖 ProTemp

Шаблон репозитория с автогенерацией документации на базе [MkDocs](https://www.mkdocs.org/) + [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/). Подходит для быстрого старта, особенно если необходимо сопровождать Python-код удобной, чистой и легко расширяемой документацией.

## 🚀 Быстрый старт с автоматизацией

**Скачать и запустить скрипты инициализации:**
- **Linux/macOS**: [clone_and_init.sh](https://raw.githubusercontent.com/netkeyok/protemp/refs/heads/main/MkDocs_data/clone_and_init.sh)
- **Windows**: [clone_and_init.bat](https://raw.githubusercontent.com/netkeyok/protemp/refs/heads/main/MkDocs_data/clone_and_init.bat)

```bash
# Скачать и запустить (Linux/macOS)
wget https://raw.githubusercontent.com/netkeyok/protemp/refs/heads/main/MkDocs_data/clone_and_init.sh
chmod +x clone_and_init.sh
./clone_and_init.sh my-project

# Или для Windows
# Скачайте clone_and_init.bat и запустите:
# clone_and_init.bat my-project
```

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
./MkDocs_data/generate_docs.sh serve      # Linux/macOS
:: или
MkDocs_data\generate_docs.bat serve       :: Windows
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
├── MkDocs_data/           # Папка с документацией (добавляется в .gitignore)
│   ├── docs/              # Вся документация
│   │   ├── index.md       # Главная страница
│   │   └── reference.md   # API-документация
│   ├── mkdocs.yml         # Конфигурация MkDocs
│   ├── doc_requirements.txt # Зависимости для документации
│   ├── generate_docs.sh   # Сборка / запуск (Linux/macOS)
│   ├── generate_docs.bat  # Сборка / запуск (Windows)
│   ├── clone_and_init.sh  # Скрипт инициализации (Linux/macOS)
│   ├── clone_and_init.bat # Скрипт инициализации (Windows)
│   └── README.md          # Этот файл (копируется в корень)
├── README.md              # Копия из MkDocs_data/
├── init_prompt.md         # Промт для ИИ/ассистентов
└── .gitignore
```

---

## 🧠 Использование в ИИ-сценариях

Файл `init_prompt.md` содержит инструкции, которые можно использовать в интеграции с AI/LLM для генерации, обновления и ведения документации и кода.

---

## ⚙️ Автоматизация запуска нового проекта

### Что делают скрипты:

- Клонируют шаблон репозитория
- Удаляют старую `.git`-историю
- Копируют README.md в корень проекта
- Добавляют папку MkDocs_data/ в .gitignore
- Создают виртуальное окружение Python
- Устанавливают зависимости для документации
- Инициализируют новый Git репозиторий с первым коммитом

---

## 📬 Обратная связь

Отсутствует :-)
