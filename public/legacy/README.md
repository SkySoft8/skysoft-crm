Russian RAPIRA language pack and manual for SuiteCRM
=========================================

+ Здесь находится самая актуальная версия языковых файлов для [SuiteCRM][suitecrm] версии 7.x (форка безвременно почившего [SugarCRM CE][sugar]), с учётом последних дополнений и исправлений
+ Обновление языковых файлов проще всего сделать через установку языкового пакета ([ссылка на последний актуальный перевод для SuiteCRM][langpack]); процесс установки/обновления пакета русификации SuiteCRM описан ниже
+ Перевод Руководства пользователя и администратора SuiteCRM осуществляется [здесь][man-adoc]
+ Обсуждение русификации интерфейса и перевода документации по SuiteCRM доступно на [официальном форуме][forum]

------------------------------------------------

**Обратите внимание: в версии 7.10.10 и последующих используется значительно обновлённый языковой пакет. 
Если вы используете предыдущие версии SuiteCRM - загружайте [соответствующие](https://github.com/likhobory/SuiteCRM7RU/releases) языковые пакеты.**

------------------------------------------------
<b>Что нового в SuiteCRM 7.14</b>    (история всех основных изменений содержится в файле [HISTORY.TXT][history])

В этой версии нет изменений функционала.  
Добавлена поддержка PHP версий 8.1 и 8.2 (PHP версий 8.0 и более ранних не поддерживается).

<b>Что нового в SuiteCRM 7.13</b>    

Обновлён алгоритм выбора учётной записи отправителя при создании электронных писем.  
Добавлена возможность создания подписи в учётных записях исходящей почты.  

Добавлен модуль для настройки внешних OAUTH-подключений.  
Добавлен модуль для настройки внешних OAUTH-провайдеров.  

Обновлён модуль входящей почты:
 - Настройка персональной, групповой учётной записи и учётной записи для обработки возвращаемой почты теперь происходит в стандартной Форме редактирования (настройки входящей почты в профиле пользователя перемещены в меню модуля 'Пользователи')
 - возможность назначения Групп пользователей входящим письмам
 - возможность указания типа авторизации  (Базовая/OAUTH) при создании/редактировании учётной записи входящей почты
 - возможность выбора внешнего OAUTH-подключения в настройках учётной записи входящей почты
 
Обновлён модуль исходящей почты:
 - Настройка персональной учётной записи теперь происходит в стандартной Форме редактирования (настройки исходящей почты в профиле пользователя перемещены в меню модуля 'Пользователи')
 - возможность назначения Групп пользователей исходящим письмам  
 
Добавлен [ACL Access Logic Hook](https://github.com/salesagility/SuiteCRM/pull/9846).

Ссылки на описание нововведений доступны на [официальном форуме](https://suitecrm.com/suitecrm/forum/suitecrm-forum-russian-general-discussion/17973-suitecrm#60692).

------------------------------------------------

<b>Русский язык в SuiteCRM: установка языкового пакета</b>

Все действия по установке дополнительных пакетов (не только языковых) производятся через панель администратора.

1. Входим в систему с правами администратора.
2. В правом верхнем меню выбираем пункт <b>Администрирование</b> (Admin) для входа в раздел администратора системы.
3. В разделе администратора выбираем <b>Загрузчик модулей</b> (Module Loader).
4. Если в SuiteCRM уже был установлен пакет русификации, то его рекомендуется удалить (кнопка  <b>Деинсталлировать</b>).
5. Загружаем архив с языковым пакетом и далее следуем шагам, описанным в мастере.
6. После того как мастер сообщит об успешной установке пакета, рекомендуется выполнить быстрое восстановление: Администрирование->Восстановление->Быстрое восстановление (Admin->Repair->Quick Repair and Rebuild).
7. Выходим из системы (Logout) и на странице ввода логина/пароля выбираем необходимый язык интерфейса системы.
8. Вновь входим в систему.

Установленный язык можно указать в качестве языка по умолчанию. Для этого в панели администрирования в подразделе <b>Региональные настройки</b> выберите соответствующий языковой пакет (Admin->Locale Settings->Default Language).

------------------------------------------------

<b>Документация к SuiteCRM</b>

[Официальная][man-ru] русскоязычная документация не обновляется с 2022 года, актуальная информация по установке,
 настройке и использованию SuiteCRM сейчас располагается [здесь][man-ru-netlify].
 
Разница между актуальной и официальной версией описана в [этом][pr-582] запросе на слияние.

Пользователям, не знакомым с SuiteCRM, в первую очередь рекомендуются к прочтению раздел [Начало работы][getting-started], 
описывающий основные технические требования, необходимые для работы в системе, и раздел  
[Описание пользовательского интерфейса][ui], знакомящий с основными настройками системы. 
В описании присутствует масса перекрёстных ссылок, позволяющих быстро перейти к подробному описанию рассматриваемого функционала.

            
[langpack]: https://github.com/likhobory/SuiteCRM7RU/blob/ver.7.14/rapira-suite_pack_russian.zip?raw=true
[man-adoc]: https://github.com/likhobory/SuiteDocs/blob/master/README.ru.adoc
[man-ru]: https://docs.suitecrm.com/ru
[man-ru-netlify]: https://russian-rapira-suitecrm-docs.netlify.app/ru   

[pr-582]: https://github.com/salesagility/SuiteDocs/pull/582

[getting-started]: https://russian-rapira-suitecrm-docs.netlify.app/ru/user/introduction/getting-started
[ui]: https://russian-rapira-suitecrm-docs.netlify.app/ru/user/introduction/user-interface

[suitecrm]: https://github.com/salesagility/SuiteCRM
[forum]: https://community.suitecrm.com/t/topic/11657
[sugar]: https://ru.wikipedia.org/wiki/SugarCRM
[history]: https://github.com/likhobory/SuiteCRM7RU/blob/master/HISTORY.TXT

