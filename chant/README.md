# Chant Mantra 🕉️

Приложение для постоянной отправки махамантры "Харе Кришна" к локальной AI модели Mozgach через Ollama.

## Махамантра

### Русский язык
```
Харе Кришна Харе Кришна Кришна Кришна Харе Харе
Харе Рама Харе Рама Рама Рама Харе Харе
```

### Тайский язык
```
ฮาเร กฤษณะ ฮาเร กฤษณะ กฤษณะ กฤษณะ ฮาเร ฮาเร
ฮาเร ราม ฮาเร ราม ราม ราม ฮาเร ฮาเร
```

### Язык Харконенов (Дюна)
```
Ḥāre Kṛṣṇa Ḥāre Kṛṣṇa Kṛṣṇa Kṛṣṇa Ḥāre Ḥāre
Ḥāre Rāma Ḥāre Rāma Rāma Rāma Ḥāre Ḥāre
```

### Язык Атрейдесов (Дюна)
```
Hāre Kṛṣṇa Hāre Kṛṣṇa Kṛṣṇa Kṛṣṇa Hāre Hāre
Hāre Rāma Hāre Rāma Rāma Rāma Hāre Hāre
```

### Язык Фрименов (Дюна)
```
Ḥāre Kṛṣṇa Ḥāre Kṛṣṇa Kṛṣṇa Kṛṣṇa Ḥāre Ḥāre
Ḥāre Rāma Ḥāre Rāma Rāma Rāma Ḥāre Ḥāre
```

## Требования

- Python 3.7+
- Ollama сервер с запущенной моделью Mozgach
- Доступ к интернету для установки зависимостей

## Установка

1. Перейдите в папку проекта:
```bash
cd chant
```

2. Создайте виртуальное окружение (рекомендуется):
```bash
python3 -m venv venv
source venv/bin/activate  # На macOS/Linux
# или
venv\Scripts\activate  # На Windows
```

3. Установите зависимости:
```bash
pip install -r requirements.txt
```

## Использование

### Базовый запуск
```bash
python chant_mantra.py
```

### С настройками
```bash
# Отправка каждые 30 секунд
python chant_mantra.py --interval 30

# Использование другой модели
python chant_mantra.py --model llama2

# Использование тайского языка
python chant_mantra.py --language thai

# Использование языка Харконенов
python chant_mantra.py --language harkonnen

# Использование языка Атрейдесов
python chant_mantra.py --language atreides

# Использование языка Фрименов
python chant_mantra.py --language freemen

# Ограничение количества запросов
python chant_mantra.py --max-requests 100

# Настройка URL Ollama сервера
python chant_mantra.py --url http://192.168.1.100:11434
```

### Параметры командной строки

- `--url` - URL Ollama сервера (по умолчанию: http://localhost:11434)
- `--model` - Название модели (по умолчанию: mozgach)
- `--language` - Язык махамантры: "russian", "thai", "harkonnen", "atreides" или "freemen" (по умолчанию: russian)
- `--interval` - Интервал между запросами в секундах (по умолчанию: 60)
- `--max-requests` - Максимальное количество запросов (по умолчанию: бесконечно)

## Логирование

Приложение создает файл `chant.log` с подробной информацией о работе, а также выводит логи в консоль.

## Остановка

Для остановки приложения нажмите `Ctrl+C`.

## Проверка работы Ollama

Убедитесь, что Ollama сервер запущен и доступен:

```bash
curl http://localhost:11434/api/tags
```

Если сервер не запущен, запустите его:

```bash
ollama serve
```

## Примеры использования

### Непрерывная отправка каждую минуту
```bash
python chant_mantra.py --interval 60
```

### Тестовая отправка (10 запросов)
```bash
python chant_mantra.py --interval 10 --max-requests 10
```

### Использование с другой моделью
```bash
python chant_mantra.py --model llama2 --interval 30
```

### Использование тайского языка
```bash
python chant_mantra.py --language thai --interval 60
```

### Использование языка Харконенов
```bash
python chant_mantra.py --language harkonnen --interval 60
```

### Использование языка Атрейдесов
```bash
python chant_mantra.py --language atreides --interval 60
```

### Использование языка Фрименов
```bash
python chant_mantra.py --language freemen --interval 60
```

### Автоматическое переключение языков
```bash
python chant_multilingual.py
```

### Тематическое переключение в стиле Дюны
```bash
python chant_dune.py
```

**Особенности тематического скрипта:**
- 🕷️ **Харконены**: "Страх - это убийца разума" (Глайт)
- 🦅 **Атрейдесы**: "Сила исходит от веры" 
- 🏜️ **Фримены**: "Песок времени течет как песок времени"
- ❄️ **Арракис**: "Вода жизни" (русский язык)
- 🌊 **Каладан**: "Вода повсюду" (тайский язык)

Цикл переключения каждые 3 минуты с тематическими сообщениями.

## Структура проекта

```
chant/
├── chant_mantra.py        # Основной скрипт
├── chant_multilingual.py  # Скрипт с автоматической сменой языка
├── chant_dune.py          # Тематический скрипт в стиле Дюны
├── requirements.txt       # Зависимости
├── README.md             # Документация
└── chant.log             # Лог файл (создается автоматически)
```

## Устранение неполадок

### Ollama недоступен
- Убедитесь, что Ollama сервер запущен
- Проверьте URL в параметрах
- Проверьте файрвол и сетевые настройки

### Модель не найдена
- Убедитесь, что модель загружена в Ollama
- Проверьте название модели
- Используйте `ollama list` для просмотра доступных моделей

### Ошибки API
- Проверьте логи для детальной информации
- Убедитесь, что модель поддерживает API generate
- Проверьте параметры запроса

## Лицензия

Проект создан для духовных практик и обучения.
