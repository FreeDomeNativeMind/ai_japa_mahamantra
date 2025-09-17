#!/bin/bash

# Скрипт для запуска системы чантинга с 3 потоками
# Запускает 3 экземпляра моделей mozgach:latest в разных потоках

echo "🚀 Запуск системы чантинга с 3 потоками..."
echo "📋 Проверка зависимостей..."

# Проверяем наличие Python
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 не найден. Установите Python 3.7+"
    exit 1
fi

# Проверяем наличие виртуального окружения
if [ ! -d "venv" ]; then
    echo "📦 Создание виртуального окружения..."
    python3 -m venv venv
fi

# Активируем виртуальное окружение
echo "🔧 Активация виртуального окружения..."
source venv/bin/activate

# Устанавливаем зависимости
echo "📥 Установка зависимостей..."
pip install -r requirements.txt

# Проверяем доступность Ollama
echo "🔍 Проверка доступности Ollama..."
if ! curl -s http://localhost:11434/api/tags > /dev/null; then
    echo "⚠️  Ollama сервер недоступен на localhost:11434"
    echo "💡 Убедитесь, что Ollama запущен: ollama serve"
    echo "🌐 Или укажите другой URL в параметрах"
fi

# Проверяем наличие модели mozgach:latest
echo "🤖 Проверка модели mozgach:latest..."
if ! curl -s http://localhost:11434/api/tags | grep -q "mozgach:latest"; then
    echo "⚠️  Модель mozgach:latest не найдена"
    echo "💡 Загрузите модель: ollama pull mozgach:latest"
    echo "⏳ Это может занять некоторое время..."
fi

echo ""
echo "🎯 Система готова к запуску!"
echo "📝 Логи будут сохраняться в chant_multithread.log"
echo "🛑 Для остановки используйте Ctrl+C"
echo ""

# Запускаем систему
python3 chant_multithread.py
