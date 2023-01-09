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

  Данный процесс несложный и занимает несколько этапов:
  
1. Заходим в <b>«Пуск»</b> и открываем <b>«Панель управления»</b>:
  
![Панель управления Windows 7](/images/win_7/win7_add_user_1.jpg "Панель управления Windows 7")
  
2. В панели управления в режиме просмотра <b>«Категория»</b> кликаем мышкой по ссылке <b>«Добавление и удаление учетных записей пользователей»</b>. Откроется окно, в котором можно управлять существующими учетными записями и добавлять новых пользователей.
  
![Добавление пользователя Windows 7](/images/win_7/win7_add_user_2.png "Добавление пользователя Windows 7")
  
3. В данном окне кликаем по ссылке <b>«Создание учетной записи»</b>. Откроется окно, в котором указываем имя учетной записи (для учётной записи ученика я дал имя <b>Student</b>) и тип (обычный пользователь).
  
![Добавление пользователя Windows 7](/images/win_7/win7_add_user_3.png "Добавление пользователя Windows 7")
  
4. Нажимаем кнопку <b>«Создание учетной записи»</b>. Новый пользователь у Windows 7 создан.
  
![Добавление пользователя Windows 7](/images/win_7/win7_add_user_4.png "Добавление пользователя Windows 7")  

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

  [1. Через редактор групповых политик gpedit.msc](https://github.com/auto-no-mous/Clean-school-computer-win/blob/main/gpedit-guide.md) (затратно по времени, но есть возможность гибких настроек)
  
  [2. Внесение изменений в реестр напрямую](#Внесение-изменений-в-системный-реестр-напрямую) **(быстро, рекомендуется)**

Ниже приведен 2-й способ.
  
  
### Внесение изменений в системный реестр напрямую

Работать с редактором системного реестра regedit.exe не придется, все нужные ключи реестра уже собраны в командный .bat файл. Его нужно будет лишь выполнить правильным образом:

1. Скачайте bat-файл [disable_personalization.bat](https://raw.githubusercontent.com/auto-no-mous/Clean-school-computer-win/main/files/disable_personalization.bat)

Для этого нажмите на ссылку, окроется страница с содержимым файла. Щелкните правой кнопкой мыши по странице - "Сохранить как", и сохраните файл.

  ![Сохранение файла с github](/images/win_10/github_file_save_1.png "Сохранение файла с github")
  
При сохранении нужно обращать внимание на расширение файла. Операционная система может по умолчанию добавить расширение .txt, что не нужно:
  
  ![Сохранение файла с github](/images/win_10/github_file_save_2.png "Сохранение файла с github")
  
2. Зайдите в учётную запись ученика на компьютере
3. Запустите файл **disable_personalization.bat** от имени администратора

  ![Окно выполнения скрипта disable_personalization.bat](/images/win_10/disable_script_run.png "Окно выполнения скрипта disable_personalization.bat")
  
  ![Окно выполнения скрипта disable_personalization.bat](/images/win_10/disable_script_end.png "Окно выполнения скрипта disable_personalization.bat")
  
4. Перезагрузите ПК и [проверьте работоспособность настроек.](##-Шаг-4.-Проверка-работоспособности-запрещающих-настроек)
  
  
**Если запреты нужно снять**, то скачайте файл [enable_personalization.bat](https://raw.githubusercontent.com/auto-no-mous/Clean-school-computer-win/main/files/enable_personalization.bat), и выполните его на учётной записи ученика от имени администратора, и обычным способом (аналогично файлу **disable_personalization.bat**)

 **Примечание.** Файл disable_personazation.bat содержит не все запреты, доступные через gpedit.msc, а только их часть, которую удалось найти отрытых источниках. Кроме того, вы можете открыть файл disable_personazation.bat с помощью любого текстового редактора (например, Блокнот), и внести изменения.

Например, если убрать из файла эту строку:
 
**REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoThemesTab /t REG_DWORD /d 1 /f**
 
 то вкладка темы останется доступной в настройках персонализации.


## Шаг 4. Проверка работоспособности запрещающих настроек
  
  Теперь нужно проверить, влияют ли настройки на систему. Попробуйте изменить фоновый рисунок рабочего стола (перезагрузка не нужна, настройки должны влиять сразу просле их включения).
  
  **Примечание 1.** *Иногда, даже если настройка работает, удаётся **один раз** изменить фоновый рисунок. Повторная смена уже не сработает. Это баг Windows, но ничего страшного в этом нет, просто снимем запрет, и снова установим нужные обои.*
  
  **Примечание 2.** *Программа "Paint" имеет встроенные команды по изменению фонового рисунка, и каким-то образом также позволяют **один раз** изменить фоновый рисунок в обход запрета. Это работает отдельно от смены рисунка из настроек персонализации, или меню при просмотре изображения встроенными программами. Соответственно, после установки ограничения, желательно просто открыть желаемый файл с фоновым рисунком через Paint, и установить его еще раз.*
  
  ![Paint](/images/win_10/paint_change_wallpaper.png "Paint")
  
  Если после всех этих действий, у вас более никаким образом не получается изменить фон рабочего стола - поздравляю, всё работает. Если вы пользовались первым способом, и настройки не сработали, а фон всё также можно менять - воспользуйтесь [включением настроек напрямую через реестр (способ № 2)](https://github.com/auto-no-mous/Clean-school-computer-win#Внесение-изменений-в-системный-реестр-напрямую).


## Шаг 5. Запрет изменения пароля пользователем

По умолчанию, даже пользователь с обычными правами может изменить или добавить пароль на своей учётной записи. Заблокируем эту возможность:

1. Открываем окно "Выполнить" (*WIN + R*), и выполняем команду **lusrmgr.msc**
2. В появившемя окне слева выбираем "Пользователи"

  ![lusrmgr.msc](/images/win_10/lusrmgr_1.png "lusrmgr.msc")

3. В правой части окна находим учётную запись ученика, жмём по ней правой кнопокой мыши → Свойства
4. Ставим галочку "**Запретить смену пароля пользователем**". Жмём ОК.

  ![lusrmgr.msc](/images/win_10/lusrmgr_2.png "lusrmgr.msc")

Теперь пользователю будет заблокирована возможность смены пароля.


## Шаг 6. Настроим скрипт очистки рабочего стола при запуске + восстановление стандартных имен значков

Теперь нужно создать скрипт, который будет очищать рабочий стол, и восстанавливать стандартные имена значков рабочего стола. Для перемещения файлов с рабочего стола нам понадобится бесплатный архиватор 7-zip. Выполняем по пунктам:

1. Скачать архиватор **7-zip** https://www.7-zip.org/, затем установить его.
2. Скачать шаблон скрипта [autoexec.bat](https://github.com/auto-no-mous/Clean-school-computer-win/blob/main/files/autoexec.bat)
3. Откройте скрипт **autoexec.bat** с помощью любого текстового редактора (например, Блокнот)
4. Находим строку 
```
set source="c:\Users\Student\Desktop\*"
```
и заменяем Student на имя учётной записи ученика. К примеру, если учётная запись ученика называется "Ученик", то получится должно так:
```
set source="c:\Users\Ученик\Desktop\*"
```
5. Находим строку
```
set destination="D:\BACKUP"
```
и заменяем этот путь на ту папку, в куда должны попадать файлы после удаления. Если в компьютере есть диск **D:**, можете оставить как есть, в таком случае папка создаться автоматически. Если диска **D:** нет, и нет желания заморачиваться, поменяйте в пути букву **D** на **C**:
```
set destination="C:\BACKUP"
```
6. Если на компьютере операционная система Windows 8 или новее, следующие строки можно удалить:
```
  echo *** Refresh desktop... ***
setlocal EnableExtensions DisableDelayedExpansion
ie4uinit.exe -show
```
**Примечание**. *Эти строки обновляют содержимое рабочего стола, и они работают только на Windows 7. Для Windows 8 и старше они не работают, а обновление рабочего стола средствами командного файла затруденено. Без обновления переименованные значки визуально сохранят старые имена, на некоторое время. Это некритично.*

7. Сохраняем  файл

## Шаг 7. Добавим скрипт в автозагрузку

Теперь остаётся добавить получившийся скрипт autoexec.bat в автозагрузку, чтобы он исполнялся при каждом включении системы. Самый простой способ это сделать - 
поместить скрипт в специальную папку "Автозагрузка". Чтобы открыть эту папку, выполните следующее:

1. Открываем окно "Выполнить" (*WIN + R*), и выполняем команду **shell:startup**
2. Открывается окно с папкой. Копируем скрипт в эту папку.
3. Готово!

Остаётся только перезагрузить ПК, и проверить что всё работает. После входа в учётную запись, должно ненадолго появляться окно терминала - это исполняется наш файл, очищая рабочий стол, и восстанавливая имена значков "Корзина" и "Компьютер".

### А на этом всё :wink:
