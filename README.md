# AntiFlood v1.0
### [Скачать](https://github.com/Und3X/HouseFinder/releases) (Последняя версия)
#### [Поддержать автора рублем](https://yoomoney.ru/to/4100116150755944)
## Зависимости (установить перед запуском скрипта)
- [SAMP 0.3.7 R1](http://files.sa-mp.com/sa-mp-0.3.7-install.exe)
- [CLEO 4](https://cleo.li)
- [SAMPFUNCS v5.4.1 ](https://www.blast.hk/threads/17/) (для работы может потребуется установка [DirectX и Visual C++ Redistributable](https://getfile.dokpub.com/yandex/get/https://disk.yandex.ua/d/Qb-D68L20pn0RA))
- [Moonloader v026.5](https://www.blast.hk/threads/13305/)
## Установка
- Установить все из пункта **Зависимости** в корневую папку игры  _(если уже стоят, пропускаем)_
- Переместить скрипт **"AntiFlood.lua"** в папку moonloader корневой папки игры
## Описание
Данный скрипт предназначен для фильтрации повторяющихся сообщений от игроков. Если игрок пишет одно и тоже сообщение в течении определенного времиени, его сообщение будет отфильтровано и не будет выведено в чат.
## Настройка
Все настройки производятся в файле **"AntiFlood.lua"**. 

Таймаут (время фильтрации) утанавливается в переменной `local TIMEOUT = 10`, где **10** время в секундах.

Шаблоны отслеживания сообщений находятся в таблице `local PATTERNS`.
Для добавления нового шаблона, просто дописываем строкку в таблицу в RegEx формате. ВАЖНО! соблюдайте порядок групп, 1я группа - ник игрока, 2я группа - сообщение.
Про регулярные выражения можете почитать тут: [LUA Patterns](https://gitspartv.github.io/lua-patterns/)

## Связь
- Автор: https://vk.com/un_dex
- Группа: https://vk.com/und3x_mod
- Git Issues: https://github.com/Und3X/HouseFinder/issues
