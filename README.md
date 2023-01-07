# Настройка ученического компьютера на ОС Windows

В этой инструкции описаны методы настройки ОС Windows, которые помогут:

1. Запретить изменение фонового рисунка рабочего стола
2. Запретить изменение прочих настроек персонализации (тема, вид курсора, панель задач, и многое другое)
3. Автоматически очищать рабочий стол от файлов (без их удаления)
4. Бороться с переименованием значков "Компьютер", "Корзина", и т.д.

Работоспособность приведённых ниже методов проверена на Windows 10, Windows 7, но, скорее всего, они будут работать и на более старших версиях ОС Windows.
____
## Шаг 1. Учетная запись ученика должна быть с обычными правами

Это важно, потому что с правами администратора все запреты довольно легко отключить. Если на компьютере есть только одна учетная запись, и отдельной учётной записи для ученика нет, нужно создать ещё одну, специально для ученика. Можете воспользоваться одним из руководств ниже:

<details>
  <summary><b>Добавление пользователя Windows 10</b></summary>

**Пуск** --> **Параметры**. В указанном пункте настроек откройте раздел **Семья и другие пользователи**
В разделе **Другие пользователи** выберите **Добавить пользователя на этот компьютер**

![Окно настроек пользователей Windows 10](/images/win_10/add_user_win10_1.png "Окно настроек пользователей Windows 10")

Появится окно, в котором будет предложено ввести email нового пользователя, если у него есть учетная запись Microsoft. Зачастую, для ученика это не нужно, и достаточно локальной учётной записи. Для этого выбираем ниже **У меня нет данных для входа этого человека**

![Окно настроек пользователей Windows 10](/images/win_10/add_user_win10_2.png "Окно настроек пользователей Windows 10")

В следующем окне выбираем **Добавить пользователя без учетной записи Майкрософт** внизу. 

![Окно настроек пользователей Windows 10](/images/win_10/add_user_win10_3.png "Окно настроек пользователей Windows 10")

В следующем окне останется ввести имя пользователя (желательно, латиницей), пароль (если требуется пользователь без пароля, просто не вводите ничего в соответствующие поля), подсказку для пароля и указать вопросы для восстановления пароля, на случай, если он будет забыт. Этого достаточно, теперь ученик сможет входить в систему под этой записью, а по умолчанию она имеет права обычного пользователя.

![Окно настроек пользователей Windows 10](/images/win_10/add_user_win10_4.png "Окно настроек пользователей Windows 10")

На этом добавление нового пользователя завершено.
</details>

<details>
  <summary><b>Добавление пользователя Windows 7</b></summary>

</details>
____
## Шаг 2. Настроить персонализацию в учётной записи ученика

Теперь нужно привести настройки персонализации к желаемому виду. Далее мы запретим их изменять, поэтому заранее настоим нужные:

1. Фоновый рисунок рабочего стола
2. Тему оформления
3. Цветовую схему
4. Звуковую схему (или её отсутствие)
5. Размер и вид курсора
6. Расположение и размер панели задач
7. Прочие настройки персонализации

После того, как все настройки внесены, переходим к следующему шагу
____

## Шаг 3. Запрет изменения настроек персонализации

Это можно сделать двумя способами:

  [1. Через редактор групповых политик gpedit.msc](#Настройка-с-помощью-редактора-групповых-политик-gpedit.msc).(затратно по времени, но есть возможность гибких настроек)
  
  [2. Внесение изменений в реестр напрямую (быстро, рекомендуется)](#Внесение-изменений-в-системный-реестр-напрямую).


  ### Настройка с помощью редактора групповых политик gpedit.msc
  
Откроем окно «Выполнить» (найдёте его в меню Пуск, а также можно открыть сочетанием <i>WIN + R</i>), и наберём там команду <b>gpedit.msc</b>. Жмём Enter, и если всё хорошо — видим окно редактора:
  
  ![Редактор групповых политик gpedit.msc](/images/gpedit/gpedit_main.png "Окно редактора групповых политик")
  
  а если нет — вот такое сообщение:
  
  ![Ошибка gpedit.msc](/images/gpedit/cannot_find_gpedit_error.png "Ошибка - редактор групповых политик не найден")
  
  В случае ошибки, можно установить gpedit.msc [вручную](https://github.com/auto-no-mous/Clean-school-computer-win/blob/main/gpedit-error-fix.md)
  
  ### Приступим к настройке запретов
  
  После того, как редактор групповых политик gpedit.msc запущен, первое, и самое главное - запретить изменение фонового рисунка.
  
  Для этого откроем раздел Конфигурация пользователя → Административные  шаблоны → Панель управления → Персонализация. (User Configuration → Administrative templates → Control Panel → Display)
  
  ![Редактор групповых политик - Персонализация](/images/gpedit/gpedit_personalization.png "Персонализация")
  
  В правой части окна найдём параметр "Запрет изменения фона рабочего стола" (Prevent changing wallpaper). Двойным кликом откроем окно настройки этого параметра, и выберем "Включено", затем нажмём ОК.
  
   ![Редактор групповых политик - Окно настроек параметра](/images/gpedit/gpedit_option_window.png "Окно настроек параметра")
  
  Уже после этой опции, желательно [проверить работособность настроек](##-Шаг-4.-Проверка-работоспособности-запрещающих-настроек). Если всё работает, продолжаем.
  
  Включим все отмеченные на скриншоте опции (у вас порядок опций, как и их количество может отличаться). Если каких-то опций в вашей версии операционной системы нет, ничего страшного. Самые нужные нам настройки есть во всех версиях, начиная с Windows 7 и новее.
  
  ![Редактор групповых политик - Персонализация](/images/gpedit/gpedit_personalization.png "Персонализация")

После, переходим в раздел "Окно свойств экрана", полный путь к нему: Конфигурация пользователя → Административные  шаблоны → Панель управления → Окно свойств экрана. (User Configuration → Administrative templates → Control Panel → Display Properties). Активируем все доступные опции.

  ![Редактор групповых политик - Окно свойств экрана](/images/gpedit/gpedit_display_properties.png "Окно свойств экрана")
  
  Всё в том же разделе "Панель управления" находим подраздел "Программы". Я предлагаю включить все запреты, но вы можете настроить по своему усмотрению:
  
![Редактор групповых политик - Программы](/images/gpedit/gpedit_programs.png "Программы")
    
В подразделе "Язык и региональные стандарты" также внесём необходимые настройки:
  
![Редактор групповых политик - Язык и региональные стандарты](/images/gpedit/gpedit_languages.png "Язык и региональные стандарты")
 
Поднимемся на один раздел вверх, в самом каталоге "Панель управления" есть полезная опция - **Запретить доступ к панели управления и параметрам компьютера**. Рекомендую включить и её. Полный путь:  Конфигурация пользователя → Административные  шаблоны → Панель управления (User Configuration → Administrative templates → Control Panel).

![Редактор групповых политик - Панель управления](/images/gpedit/gpedit_control_panel.png "Панель управления")
  
Кроме того, в разделе "Панель управления" есть еще разделы "Принтеры" и "Установка и удаление программ". Можете настроить их на своё усмотрение (необязательно):

*Принтеры*

![Редактор групповых политик - Принтеры](/images/gpedit/gpedit_optional_printers.png "Принтеры")
    
*Установка и удаление программ*

![Редактор групповых политик - Установка и удаление программ](/images/gpedit/gpedit_optional_programs.png "Установка и удаление программ")    
    
В других разделах редактора групповых политик также есть полезные настройки. Зайдём в подраздел "Меню Пуск и панель задач" раздела "Административные шаблоны" (Конфигурация пользователя → Административные  шаблоны → Меню "Пуск" и панель задач (User Configuration → Administrative templates → Start Menu and taskbar). Здесь довольно много настроек весь их список не умещался на экран. На скриншоте они в отсортированном порядке, вам же придётся их отыскать по названиям, как на скриншоте:

![Редактор групповых политик - Меню Пуск](/images/gpedit/gpedit_start_menu.png "Меню Пуск")    

Заглянем в еще один подраздел "Административных шаблонов" - "Гаджеты рабочего стола". Я предлагаю их отключить:

![Редактор групповых политик - Гаджеты рабочего стола](/images/gpedit/gpedit_gadgets.png "Гаджеты рабочего стола")  

И, последняя важная настройка - автозапуск. (Конфигурация пользователя → Административные  шаблоны → Компоненты Windows → Автозапуск (User Configuration → Administrative templates → Windows Components → Autorun). На ученических компьютерах его очень желательно отключить:

![Редактор групповых политик - Автозапуск](/images/gpedit/gpedit_autorun.png "Автозапуск")  

*Кроме приведенных выше настроек, редактор групповых политик обладает еще множеством полезных опций для администрирования. Можете изучить их и настроить компьютер самостоятельно.*

Некоторые из настроек редактора групповых политик вступают в силу только после перезагрузки. Перезагрузите компьютер, и [проверьте работоспособность настроек.](##-Шаг-4.-Проверка-работоспособности-запрещающих-настроек)
____

### Внесение изменений в системный реестр напрямую

Работать с редактором системного реестра regedit.exe не придется, все нужные ключи реестра уже собраны в командный .bat файл. Его нужно будет лишь выполнить правильным образом:

1. Скачайте bat-файл [disable_personalization.bat](https://github.com/auto-no-mous/Clean-school-computer-win/blob/main/files/disable_personalization.bat)
2. Зайдите в учётную запись ученика на компьютере
3. Запустите файл **disable_personalization.bat** от имени администратора
4. Затем, запустите файл **disable_personalization.bat** обычным способом(т.е., без прав администратора)
5. Перезагрузите ПК и [проверьте работоспособность настроек.](##-Шаг-4.-Проверка-работоспособности-запрещающих-настроек)

 **Примечание.** *Файл disable_personazation.bat содержит не все запреты, доступные через gpedit.msc, а только их часть, которую удалось найти отрытых источниках. Кроме того, вы можете открыть файл disable_personazation.bat с помощью любого текстового редактора (например, Блокнот), и внести изменения - к примеру, если убрать из файла эту строку:
**REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoThemesTab /t REG_DWORD /d 1 /f**
 то вкладка темы останется доступной в настройках персонализации.*
 
____
  ## Шаг 4. Проверка работоспособности запрещающих настроек
  
  Теперь нужно проверить, влияют ли настройки на систему. Попробуйте изменить фоновый рисунок рабочего стола (перезагрузка не нужна, настройки должны влиять сразу просле их включения).
  
  **Примечание 1.** *Иногда, даже если настройка работает, удаётся **один раз** изменить фоновый рисунок. Повторная смена уже не сработает. Это баг Windows, но ничего страшного в этом нет, просто снимем запрет, и снова установим нужные обои.*
  
  **Примечание 2.** *Программы "Paint", "Paint 3D", и возможно, некоторые другие имеют встроенные команды по изменению фонового рисунка, и каким-то образом также позволяют **один раз** изменить фоновый рисунок в обход запрета. Это работает отдельно от смены рисунка из настроек персонализации, или меню при просмотре изображения встроенными программами. Соответственно, после установки ограничения, желательно просто открыть желаемый файл с фоновым рисунком через Paint, и установить его еще раз.*
  
  Если после всех этих действий, у вас более никаким образом не получается изменить фон рабочего стола - поздравляю, всё работает. Если вы пользовались первым способом, и настройки не сработали, а фон всё также можно менять - воспользуйтесь [включением настроек напрямую через реестр (способ № 2)](###Внесение-изменений-в-системный-реестр-напрямую).
____


