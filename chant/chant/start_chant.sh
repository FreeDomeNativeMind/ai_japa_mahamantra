#!/bin/bash

# Скрипт для запуска Chant Mantra
# Автоматически создает виртуальное окружение и запускает приложение

echo "🕉️ Запуск Chant Mantra..."

# Проверяем наличие Python
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 не найден. Установите Python 3.7+"
    exit 1
fi

# Проверяем наличие Ollama
if ! command -v ollama &> /dev/null; then
    echo "⚠️ Ollama не найден. Убедитесь, что Ollama установлен и запущен"
    echo "💡 Для установки: https://ollama.ai"
fi

# Создаем виртуальное окружение если его нет
if [ ! -d "venv" ]; then
    echo "📦 Создаю виртуальное окружение..."
    python3 -m venv venv
fi

# Активируем виртуальное окружение
echo "🔧 Активирую виртуальное окружение..."
source venv/bin/activate

# Устанавливаем зависимости
echo "📚 Устанавливаю зависимости..."
pip install -r requirements.txt

# Проверяем доступность Ollama
echo "🔍 Проверяю доступность Ollama..."
if curl -s http://localhost:11434/api/tags > /dev/null 2>&1; then
    echo "✅ Ollama доступен"
else
    echo "❌ Ollama недоступен. Убедитесь, что сервер запущен: ollama serve"
    exit 1
fi

# Запускаем приложение
echo "🚀 Запускаю Chant Mantra..."
echo "💡 Для остановки нажмите Ctrl+C"
echo "💡 Для настройки параметров используйте: python chant_mantra.py --help"
echo ""

python chant_mantra.py
