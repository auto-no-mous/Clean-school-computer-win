# Настройка ученического компьютера на ОС Windows

В этой инструкции описаны методы настройки ОС Windows, которые помогут:

1. Запретить изменение фонового рисунка рабочего стола
2. Запретить изменение прочих настроек персонализации (тема, вид курсора, панель задач, и многое другое)
3. Автоматически очищать рабочий стол от файлов (без их удаления)
4. Бороться с переименованием значков "Компьютер", "Корзина", и т.д.

Работоспособность приведённых ниже методов проверена на Windows 10, Windows 7, но, скорее всего, они будут работать и на более старших версиях ОС Windows.

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

## Шаг 3. Запрет изменения настроек персонализации

Это можно сделать двумя способами:

<details>
  <summary><b><font color=blue>1. Через редактор групповых политик gpedit.msc</b> (затратно по времени, но есть возможность гибких настроек)</font></summary>
Откроем окно «Выполнить» (найдёте его в меню Пуск, а также можно открыть сочетанием <i>WIN + R</i>), и наберём там команду **gpedit.msc**. Жмём Enter, и если всё хорошо — видим окно редактора:
  
  ![Редактор групповых политик gpedit.msc](/images/gpedit/gpedit_main.png "Окно редактора групповых политик")
  
  а если нет — вот такое сообщение:
  
  ![Ошибка gpedit.msc](/images/gpedit/cannot_find_gpedit_error.png "Ошибка - редактор групповых политик не найден")
  
  В случае ошибки, можно установить gpedit.msc [вручную](https://github.com/auto-no-mous/Clean-school-computer-win/blob/main/gpedit-error-fix.md)
  
  После того, как редактор групповых политик gpedit.msc запущен, первое, и самое главное - запретить изменение фонового рисунка.
  
  Для этого откроем раздел Конфигурация пользователя → Административные  шаблоны → Панель управления → Персонализация. (User Configuration → Administrative templates → Control Panel → Display)
  
  ![Редактор групповых политик - Персонализация](/images/gpedit/gpedit_personalization.png "Персонализация")
  
  В правой части окна найдём параметр "Запрет изменения фона рабочего стола" (Prevent changing wallpaper). Двойным кликом откроем окно настройки этого параметра, и выберем "Включено", затем нажмём ОК.
  
   ![Редактор групповых политик - Окно настроек параметра](/images/gpedit/gpedit_option_window.png "Окно настроек параметра")
  
  
</details>

<details>
  <summary><b>2. Внесение изменений в реестр напрямую </b>(быстро, но доступна лишь часть настроек)</summary>

</details>

Для большинства случаев, рекомендуется 2-й способ.
