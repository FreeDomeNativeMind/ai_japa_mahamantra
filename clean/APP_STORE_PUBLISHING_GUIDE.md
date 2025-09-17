# 🚀 Руководство по публикации в Apple App Store

## 📋 Предварительные требования

### 1. Apple Developer Account
- [ ] Зарегистрироваться как Apple Developer ($99/год)
- [ ] Принять лицензионное соглашение
- [ ] Настроить App Store Connect

### 2. Технические требования
- [ ] Mac с macOS (для сборки iOS приложений)
- [ ] Xcode (последняя версия)
- [ ] Flutter SDK
- [ ] iOS Simulator или физическое устройство

### 3. Подготовка проекта
- [ ] Уникальный Bundle Identifier
- [ ] Версия приложения
- [ ] Иконки всех размеров
- [ ] Скриншоты для App Store

## 🏗️ Шаг 1: Подготовка проекта

### Обновление версии
```bash
# В pubspec.yaml обновите версию
version: 1.0.0+2  # формат: major.minor.patch+build
```

### Проверка Bundle Identifier
В Xcode убедитесь, что Bundle Identifier уникален:
```
com.yourcompany.aijapamahamantra
```

### Сборка приложения
```bash
# Запустите скрипт сборки
./scripts/build_for_app_store.sh

# Или выполните команды вручную
flutter clean
flutter pub get
flutter build ios --release
```

## 📱 Шаг 2: Подготовка ресурсов для App Store

### Иконки приложения
- **Обязательно**: 1024x1024 px (App Store)
- **Рекомендуется**: все размеры для iOS

### Скриншоты
**iPhone (обязательно):**
- 6.7" Display: 1290 x 2796 px
- 6.5" Display: 1242 x 2688 px
- 5.5" Display: 1242 x 2208 px

**iPad (рекомендуется):**
- 12.9" Display: 2048 x 2732 px

### Требования к скриншотам:
- Показывают реальный интерфейс приложения
- Без текста или водяных знаков
- Минимум 3 для iPhone, 1 для iPad
- Высокое качество изображения

## 🎯 Шаг 3: Настройка в App Store Connect

### 1. Создание приложения
1. Войдите в [App Store Connect](https://appstoreconnect.apple.com)
2. Нажмите "+" → "New App"
3. Заполните основную информацию:
   - **Platforms**: iOS
   - **Name**: Ai Japa Mahamantra
   - **Primary language**: English
   - **Bundle ID**: выберите из списка
   - **SKU**: уникальный идентификатор (например: aijapamahamantra2024)

### 2. Заполнение метаданных

#### Основная информация
- **App Name**: Ai Japa Mahamantra
- **Subtitle**: AI-powered Japa Meditation Assistant
- **Keywords**: медитация,джапа,мала,йога,духовность,осознанность,ИИ,искусственный интеллект,практика,мантра
- **Description**: [Используйте описание из app_store_metadata.md]

#### Категории
- **Primary Category**: Health & Fitness
- **Secondary Category**: Lifestyle

#### Рейтинг
- **Age Rating**: 4+ (без контента для взрослых)

### 3. Загрузка ресурсов
- Загрузите иконку 1024x1024 px
- Загрузите скриншоты для всех размеров экранов
- Добавьте описание приложения

## 🔐 Шаг 4: Подписание и архивирование

### 1. Открытие проекта в Xcode
```bash
open ios/Runner.xcworkspace
```

### 2. Настройка подписи
1. Выберите проект "Runner"
2. В разделе "Signing & Capabilities":
   - **Team**: выберите ваш Apple Developer Team
   - **Bundle Identifier**: убедитесь, что он уникален
   - **Automatically manage signing**: включено

### 3. Создание архива
1. Выберите схему "Runner"
2. Выберите устройство "Any iOS Device (arm64)"
3. Product → Archive

## 📤 Шаг 5: Загрузка в App Store Connect

### 1. В Organizer
1. Выберите созданный архив
2. Нажмите "Distribute App"
3. Выберите "App Store Connect"
4. Нажмите "Next"

### 2. Настройки загрузки
- **Include bitcode**: No (рекомендуется для Flutter)
- **Upload your app's symbols**: Yes
- **Manage Version and Build Number**: Yes

### 3. Загрузка
- Дождитесь завершения загрузки
- Проверьте, что приложение появилось в App Store Connect

## 📝 Шаг 6: Заполнение информации для проверки

### 1. App Information
- **App Name**: Ai Japa Mahamantra
- **Subtitle**: AI-powered Japa Meditation Assistant
- **Keywords**: медитация,джапа,мала,йога,духовность,осознанность,ИИ,искусственный интеллект,практика,мантра
- **Description**: [Полное описание приложения]
- **Support URL**: https://aijapamahamantra.com
- **Marketing URL**: https://aijapamahamantra.com

### 2. App Review Information
- **Contact Information**: ваш email
- **Demo Account**: если требуется для тестирования
- **Notes**: дополнительная информация для рецензентов

### 3. Version Release
- **Automatic Release**: No (рекомендуется для первого релиза)
- **Manual Release**: Yes

## 🔍 Шаг 7: Отправка на проверку

### 1. Проверка перед отправкой
- [ ] Все обязательные поля заполнены
- [ ] Скриншоты загружены
- [ ] Иконка загружена
- [ ] Описание соответствует требованиям
- [ ] Приложение успешно загружено

### 2. Отправка на проверку
1. Нажмите "Save"
2. Нажмите "Submit for Review"
3. Подтвердите отправку

## ⏱️ Шаг 8: Ожидание проверки

### Время проверки
- **Обычно**: 24-48 часов
- **Может занять**: до 7 дней
- **При проблемах**: может потребоваться исправление

### Статусы проверки
- **Waiting for Review**: ожидает проверки
- **In Review**: проверяется
- **Ready for Sale**: одобрено
- **Rejected**: отклонено (с указанием причин)

## 🎉 Шаг 9: Публикация

### После одобрения
1. Приложение автоматически появится в App Store
2. Или нажмите "Release This Version" для ручного релиза

### Мониторинг
- Отслеживайте статистику загрузок
- Анализируйте отзывы пользователей
- Готовьтесь к обновлениям

## 🚨 Частые проблемы и решения

### Bundle Identifier уже используется
- Измените Bundle Identifier на уникальный
- Формат: com.yourcompany.appname

### Ошибки подписи
- Проверьте Apple Developer Account
- Убедитесь, что сертификаты действительны
- Проверьте настройки Team ID

### Отклонение приложения
- Внимательно прочитайте причины отклонения
- Исправьте указанные проблемы
- Отправьте исправленную версию

## 📚 Полезные ресурсы

- [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- [App Store Connect Help](https://help.apple.com/app-store-connect/)
- [Flutter iOS Deployment](https://flutter.dev/docs/deployment/ios)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)

## 🆘 Поддержка

Если у вас возникли вопросы:
1. Проверьте документацию Apple Developer
2. Обратитесь в Apple Developer Support
3. Изучите Flutter документацию
4. Проверьте форумы разработчиков

---

**Удачи с публикацией! 🚀**

Ваше приложение "Ai Japa Mahamantra" готово покорить App Store!
