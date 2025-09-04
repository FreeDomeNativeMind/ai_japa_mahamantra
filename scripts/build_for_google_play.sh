#!/bin/bash

# Скрипт для сборки приложения для публикации в Google Play Store
# Автор: AI Assistant
# Дата: $(date)

set -e

echo "🚀 Начинаем сборку приложения для Google Play Store..."

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

# Проверяем наличие keystore
if [ ! -f "android/upload-keystore.jks" ]; then
    echo "❌ Ошибка: Keystore не найден. Создайте keystore перед сборкой."
    echo "   Выполните: keytool -genkey -v -keystore android/upload-keystore.jks ..."
    exit 1
fi

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

# Собираем приложение для Android (Release AAB)
echo "🏗️ Собираем приложение для Android (Release AAB)..."
flutter build appbundle --release

echo "✅ Сборка завершена успешно!"
echo ""
echo "📋 Следующие шаги для публикации в Google Play:"
echo "1. Откройте Google Play Console: https://play.google.com/console"
echo "2. Создайте новое приложение"
echo "3. Загрузите AAB файл: build/app/outputs/bundle/release/app-release.aab"
echo "4. Заполните информацию о приложении"
echo "5. Загрузите скриншоты и иконки"
echo "6. Отправьте на проверку"
echo ""
echo "📱 Не забудьте подготовить:"
echo "   - Скриншоты приложения (телефон и планшет)"
echo "   - Иконку приложения (512x512 px)"
echo "   - Описание приложения"
echo "   - Ключевые слова"
echo "   - Политику конфиденциальности"
echo "   - Графические ресурсы для магазина"
echo ""
echo "🔗 Полезные ссылки:"
echo "   - Google Play Console: https://play.google.com/console"
echo "   - Руководство по публикации: https://support.google.com/googleplay/android-developer/"
echo "   - Требования к ресурсам: https://support.google.com/googleplay/android-developer/answer/9859348"
echo ""
echo "📁 Файл для загрузки:"
echo "   $(pwd)/build/app/outputs/bundle/release/app-release.aab"
