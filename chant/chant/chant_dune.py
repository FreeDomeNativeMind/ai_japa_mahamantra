#!/usr/bin/env python3
"""
Chant Dune - тематическая демонстрация махамантры на языках вселенной Дюны
"""

import time
import threading
from chant_mantra import ChantMantra

def dune_language_cycle(chanter, cycle_interval=180):
    """
    Циклически переключает языки в стиле вселенной Дюны
    
    Args:
        chanter: Экземпляр ChantMantra
        cycle_interval: Интервал смены языка в секундах
    """
    dune_languages = ["harkonnen", "atreides", "freemen", "russian", "thai"]
    current_index = 0
    
    print("🏜️ Дюна: Песок времени течет как песок времени...")
    
    while True:
        time.sleep(cycle_interval)
        
        # Переключаем на следующий язык
        current_index = (current_index + 1) % len(dune_languages)
        new_language = dune_languages[current_index]
        
        # Тематические сообщения для каждого языка
        themes = {
            "harkonnen": "🕷️ Глайт: 'Страх - это убийца разума' - переключаю на язык Харконенов",
            "atreides": "🦅 Атрейдес: 'Сила исходит от веры' - переключаю на язык Атрейдесов",
            "freemen": "🏜️ Фримен: 'Песок времени течет как песок времени' - переключаю на язык Фрименов",
            "russian": "❄️ Арракис: 'Вода жизни' - переключаю на русский язык",
            "thai": "🌊 Каладан: 'Вода повсюду' - переключаю на тайский язык"
        }
        
        print(f"\n{themes.get(new_language, f'🔄 Переключение на язык: {new_language}')}")
        chanter.change_language(new_language)

def main():
    """Основная функция для тематической демонстрации Дюны"""
    print("🏜️ Chant Dune - Махамантра в стиле вселенной Дюны")
    print("=" * 60)
    print("🌍 Доступные языки:")
    print("   🕷️  harkonnen - Язык Харконенов (Глайт)")
    print("   🦅  atreides  - Язык Атрейдесов (Верность)")
    print("   🏜️  freemen   - Язык Фрименов (Песок времени)")
    print("   ❄️  russian   - Русский язык (Арракис)")
    print("   🌊  thai      - Тайский язык (Каладан)")
    print("=" * 60)
    
    # Создаем экземпляр с языком Харконенов по умолчанию
    chanter = ChantMantra(language="harkonnen")
    
    # Проверяем доступность модели
    if not chanter.check_model_availability():
        print("❌ Модель недоступна. Проверьте настройки Ollama.")
        return
    
    # Показываем текущий язык
    print(f"🌍 Текущий язык: {chanter.language}")
    print(f"🕉️ Текущая махамантра: {chanter.mantra}")
    print()
    
    # Запускаем тематическое переключение языков в отдельном потоке
    # Каждые 3 минуты (180 секунд) язык будет меняться
    dune_thread = threading.Thread(
        target=dune_language_cycle,
        args=(chanter, 180),
        daemon=True
    )
    dune_thread.start()
    
    print("🏜️ Тематическое переключение языков запущено (каждые 3 минуты)")
    print("💡 Для остановки нажмите Ctrl+C")
    print("🌍 Цикл: Харконены → Атрейдесы → Фримены → Русский → Тайский")
    print()
    
    try:
        # Запускаем основную отправку махамантры
        chanter.continuous_chant(interval=60)
    except KeyboardInterrupt:
        print("\n🛑 Получен сигнал остановки. Завершаю работу...")
    finally:
        print("🏁 Дюна: Путешествие завершено")

if __name__ == "__main__":
    main()
