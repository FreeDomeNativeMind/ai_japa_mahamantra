#!/bin/bash

# Скрипт для сборки приложения для публикации в Apple App Store
# Автор: AI Assistant
# Дата: $(date)

set -e

echo "🚀 Начинаем сборку приложения для Apple App Store..."

# Проверяем, что мы в корневой директории проекта
if [ ! -f "pubspec.yaml" ]; then
    echo "❌ Ошибка: Запустите скрипт из корневой директории проекта"
    exit 1
fi

# Проверяем наличие Flutter
if ! command -v flutter &> /dev/null; then
    echo "❌ Ошибка: Flutter не установлен или не добавлен в PATH"
    exit 1
fi

# Проверяем версию Flutter
echo "📱 Версия Flutter: $(flutter --version | head -n 1)"

# Очищаем предыдущие сборки
echo "🧹 Очищаем предыдущие сборки..."
flutter clean

# Получаем зависимости
echo "📦 Получаем зависимости..."
flutter pub get

# Проверяем код
echo "🔍 Проверяем код..."
flutter analyze

# Запускаем тесты
echo "🧪 Запускаем тесты..."
flutter test

# Собираем приложение для iOS (Release)
echo "🏗️ Собираем приложение для iOS (Release)..."
flutter build ios --release --no-codesign

echo "✅ Сборка завершена успешно!"
echo ""
echo "📋 Следующие шаги для публикации в App Store:"
echo "1. Откройте проект в Xcode: open ios/Runner.xcworkspace"
echo "2. Выберите схему 'Runner' и конфигурацию 'Release'"
echo "3. В Product > Archive создайте архив"
echo "4. В Organizer выберите архив и нажмите 'Distribute App'"
echo "5. Выберите 'App Store Connect' и следуйте инструкциям"
echo ""
echo "📱 Не забудьте подготовить:"
echo "   - Скриншоты приложения (разные размеры экранов)"
echo "   - Описание приложения"
echo "   - Ключевые слова"
echo "   - Иконку приложения (1024x1024 px)"
echo "   - Политику конфиденциальности"
echo ""
echo "🔗 Полезные ссылки:"
echo "   - App Store Connect: https://appstoreconnect.apple.com"
echo "   - Руководство по публикации: https://developer.apple.com/app-store/review/guidelines/"
echo "   - Требования к иконкам: https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/"
