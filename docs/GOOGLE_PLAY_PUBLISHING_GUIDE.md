# 🚀 Руководство по публикации в Google Play Store

## 📋 Предварительные требования

### 1. Google Play Console Account
- [ ] Зарегистрироваться как Google Play Developer ($25 единоразово)
- [ ] Принять лицензионное соглашение
- [ ] Настроить профиль разработчика

### 2. Технические требования
- [ ] Android Studio или Flutter SDK
- [ ] Java Development Kit (JDK)
- [ ] Keystore для подписания приложения
- [ ] Android устройство или эмулятор для тестирования

### 3. Подготовка проекта
- [ ] Уникальный Application ID
- [ ] Версия приложения
- [ ] Иконки всех размеров
- [ ] Скриншоты для Google Play

## 🏗️ Шаг 1: Подготовка проекта

### Обновление версии
```bash
# В pubspec.yaml обновите версию
version: 1.0.0+2  # формат: major.minor.patch+build
```

### Проверка Application ID
В `android/app/build.gradle.kts` убедитесь, что Application ID уникален:
```
applicationId = "net.nativemind.mahamantra"
```

### Сборка приложения
```bash
# Запустите скрипт сборки
./scripts/build_for_google_play.sh

# Или выполните команды вручную
flutter clean
flutter pub get
flutter build appbundle --release
```

## 📱 Шаг 2: Подготовка ресурсов для Google Play

### Иконки приложения
- **Обязательно**: 512x512 px (Play Store)
- **Рекомендуется**: все размеры для Android (48dp, 72dp, 96dp, 144dp, 192dp)

### Скриншоты
**Телефон (обязательно):**
- Минимум 2 скриншота
- Рекомендуется: 4-8 скриншотов
- Размер: минимум 320dp, максимум 3840dp

**Планшет (рекомендуется):**
- Минимум 1 скриншот
- Размер: минимум 1080dp

### Требования к скриншотам:
- Показывают реальный интерфейс приложения
- Без текста или водяных знаков
- Высокое качество изображения
- Соответствуют функциональности приложения

### Графические ресурсы
- **Feature Graphic**: 1024 x 500 px
- **TV Banner**: 1280 x 720 px (если поддерживается TV)

## 🎯 Шаг 3: Настройка в Google Play Console

### 1. Создание приложения
1. Войдите в [Google Play Console](https://play.google.com/console)
2. Нажмите "Create app"
3. Заполните основную информацию:
   - **App name**: Ai Japa Mahamantra
   - **Default language**: English
   - **App or game**: App
   - **Free or paid**: Free
   - **Declarations**: отметьте соответствующие пункты

### 2. Заполнение метаданных

#### Основная информация
- **App name**: Ai Japa Mahamantra
- **Short description**: AI-powered Japa Meditation Assistant
- **Full description**: [Используйте описание из app_store_metadata.md]

#### Категории
- **App category**: Health & Fitness
- **Content rating**: 3+ (Everyone)

#### Контактная информация
- **Website**: https://aijapamahamantra.com
- **Email**: support@aijapamahamantra.com
- **Phone**: (если есть)

### 3. Загрузка ресурсов
- Загрузите иконку 512x512 px
- Загрузите скриншоты для телефона и планшета
- Загрузите Feature Graphic
- Добавьте описание приложения

## 🔐 Шаг 4: Загрузка приложения

### 1. Создание релиза
1. В Google Play Console перейдите в "Release" → "Production"
2. Нажмите "Create new release"
3. Загрузите AAB файл: `build/app/outputs/bundle/release/app-release.aab`

### 2. Настройки релиза
- **Release name**: 1.0.0 (2)
- **Release notes**: Описание изменений в этой версии
- **Review**: Проверьте все настройки

### 3. Загрузка
- Нажмите "Review release"
- Проверьте все данные
- Нажмите "Start rollout to production"

## 📝 Шаг 5: Заполнение информации для проверки

### 1. App content
- **App access**: Все функции доступны
- **Ads**: Нет рекламы
- **Content rating**: 3+ (Everyone)
- **Target audience**: Adults 18+

### 2. Data safety
- **Data collection**: Укажите, какие данные собирает приложение
- **Data sharing**: Укажите, с кем данные не передаются
- **Security practices**: Опишите меры безопасности

### 3. App details
- **App category**: Health & Fitness
- **Tags**: meditation, japa, yoga, mindfulness, AI
- **Contact details**: Email и веб-сайт

## 🔍 Шаг 6: Отправка на проверку

### 1. Проверка перед отправкой
- [ ] Все обязательные поля заполнены
- [ ] Скриншоты загружены
- [ ] Иконка загружена
- [ ] Описание соответствует требованиям
- [ ] AAB файл успешно загружен
- [ ] Data safety заполнена
- [ ] Content rating завершен

### 2. Отправка на проверку
1. Нажмите "Review release"
2. Проверьте все данные
3. Нажмите "Start rollout to production"

## ⏱️ Шаг 7: Ожидание проверки

### Время проверки
- **Обычно**: 1-3 дня
- **Может занять**: до 7 дней
- **При проблемах**: может потребоваться исправление

### Статусы проверки
- **Under review**: проверяется
- **Approved**: одобрено
- **Rejected**: отклонено (с указанием причин)

## 🎉 Шаг 8: Публикация

### После одобрения
1. Приложение автоматически появится в Google Play
2. Пользователи смогут скачивать приложение

### Мониторинг
- Отслеживайте статистику загрузок
- Анализируйте отзывы пользователей
- Готовьтесь к обновлениям

## 🚨 Частые проблемы и решения

### Application ID уже используется
- Измените Application ID на уникальный
- Формат: com.yourcompany.appname

### Ошибки подписания
- Проверьте keystore файл
- Убедитесь, что пароли правильные
- Проверьте alias в keystore

### Отклонение приложения
- Внимательно прочитайте причины отклонения
- Исправьте указанные проблемы
- Отправьте исправленную версию

### Проблемы с Data Safety
- Тщательно заполните раздел Data Safety
- Укажите все данные, которые собирает приложение
- Опишите, как данные используются

## 📚 Полезные ресурсы

- [Google Play Console](https://play.google.com/console)
- [Google Play Policy Center](https://play.google.com/about/developer-content-policy/)
- [Flutter Android Deployment](https://flutter.dev/docs/deployment/android)
- [Material Design Guidelines](https://material.io/design)

## 🆘 Поддержка

Если у вас возникли вопросы:
1. Проверьте документацию Google Play Console
2. Обратитесь в Google Play Support
3. Изучите Flutter документацию
4. Проверьте форумы разработчиков

---

**Удачи с публикацией! 🚀**

Ваше приложение "Ai Japa Mahamantra" готово покорить Google Play Store!
