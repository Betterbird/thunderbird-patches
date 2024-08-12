:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Додати нову групу" >> chrome\uk\locale\uk\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Тека автозапуску\">" >> chrome\uk\locale\uk\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="                           >> localization\uk\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Показувати повідомлення без ключових слів" >> localization\uk\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                             >> localization\uk\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Відображати повідомлення з одним або кількома ключовими словами. Клацніть правою кнопкою миші, щоб видалити вибір ключових слів." >> localization\uk\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .label = Зробити зашифровані повідомлення доступними для пошуку (зберігає розшифровану копію локально)" >> localization\uk\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                    >> localization\uk\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Останній відкритий файл(и)..." >> localization\uk\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="            >> localization\uk\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Прикріпити останні файл(и)..." >> localization\uk\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                   >> localization\uk\messenger\menubar.ftl
%lecho% "    .label = Багаторядковий перегляд усіх папок" >> localization\uk\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option ="    >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .label = Звичайний текст або HTML"  >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Якщо у повідомленні не використовується стиль, надіслати звичайний текст. В іншому випадку надіслати HTML із резервним варіантом у вигляді звичайного тексту." >> localization\uk\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\uk\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Звичайний текст або HTML"  >> localization\uk\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\uk\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/uk/file/86e0abeb9aaa97dfe5ab5199249171b957b725dd/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Неможливо відкрити файл поштового буфера %%S."     >> chrome\uk\locale\uk\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Неможливо створити блокуючий файл %%S. Для роботи Movemail необхідне створення таких файлів в каталозі поштового буфера. Для більшості систем досить встановити цьому каталогу має права 01777." >> chrome\uk\locale\uk\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Неможливо стерти блокуючий файл %%S."                 >> chrome\uk\locale\uk\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Неможливо зменшити файл буфера %%S." >> chrome\uk\locale\uk\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Неможливо знайти локальний файл поштового буфера." >> chrome\uk\locale\uk\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Не вдалося розібрати файл буфера %%S. Файл може бути пошкоджений або недійсний." >> chrome\uk\locale\uk\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                           >> chrome\uk\locale\uk\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="         >> localization\uk\messenger\accountManager.ftl
%lecho% "    .label = Додати обліковий запис Movemail…" >> localization\uk\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                            >> localization\uk\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="                   >> localization\uk\messenger\menubar.ftl
%lecho% "    .label = Movemail-Обліковий запис..."      >> localization\uk\messenger\menubar.ftl
%lecho% "    .accesskey = M"                            >> localization\uk\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Непрочитано: %%S" >> chrome\uk\locale\uk\messenger\messenger.properties
%lecho% "selectedMsgStatus=Обрано: %%S"    >> chrome\uk\locale\uk\messenger\messenger.properties
%lecho% "totalMsgStatus=Усього: %%S"       >> chrome\uk\locale\uk\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                                      >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .label = Увімкнути вертикальні вкладки"                 >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                                         >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                            >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .label = Відобразити список вкладень над повідомленням" >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = o"                                         >> localization\uk\messenger\preferences\preferences.ftl

:: Original strings:
:: restore-tabs-session-label =
::     .value = Restore tabs on startup:
:: restore-all-tabs =
::     .label = All tabs
::     .accesskey = t
:: restore-system-tabs =
::     .label = System tabs
::     .accesskey = s
:: restore-no-tabs =
::     .label = None
::     .accesskey = n
%lecho% "restore-tabs-session-label ="                              >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .value = Відновлення вкладок під час запуску системи:" >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                                        >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .label = Всі вкладки"                                  >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = A"                                        >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                                     >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .label = Системні вкладки"                             >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = S"                                        >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                                         >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .label = Ні"                                           >> localization\uk\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = K"                                        >> localization\uk\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="   >> localization\uk\messenger\menubar.ftl
%lecho% "    .label = Широкий перегляд"   >> localization\uk\messenger\menubar.ftl
%lecho% "    .accesskey = B"              >> localization\uk\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="      >> localization\uk\messenger\menubar.ftl
%lecho% "    .label = Складений перегляд" >> localization\uk\messenger\menubar.ftl
%lecho% "    .accesskey = S"              >> localization\uk\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="                >> localization\uk\messenger\messenger.ftl
%lecho% "    .label = Редагувати заголовки..."           >> localization\uk\messenger\messenger.ftl
%lecho% "    .accesskey = K"                             >> localization\uk\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Редагування заголовків" >> localization\uk\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Скасувати"             >> localization\uk\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Відновити"            >> localization\uk\messenger\messenger.ftl
%lecho% "    .title = Показати оригінальне значення"     >> localization\uk\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Оновити"               >> localization\uk\messenger\messenger.ftl

:: Original strings:
:: quick-filter-bar-negate =
::     .title = Right-click or Ctrl+Enter on a button negates the result.
::       For the text and tag filter, any negated button creates an AND condition.
::       When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages.
::       Examples:
::       • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’.
::       • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”.
::       • [Any of] with [Important] negated and [Work] and [Personal] selected:
::       Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag.
%lecho% "quick-filter-bar-negate ="                                                                                                               >> localization\uk\messenger\about3Pane.ftl
%lecho% "    .title = Натискання правої кнопки миші або одночасне натискання клавіш Ctrl та Enter на кнопці призводить до скасування дії."        >> localization\uk\messenger\about3Pane.ftl
%lecho% "      Для фільтра тексту та тегів будь-яка відхилена кнопка створює умову 'І'."                                                          >> localization\uk\messenger\about3Pane.ftl
%lecho% "      Коли фільтр за тегами інвертований (відкинутий), вибір кнопки тега додає відповідні повідомлення до списку повідомлень без тегів." >> localization\uk\messenger\about3Pane.ftl
%lecho% "      Приклади:"                                                                                                                         >> localization\uk\messenger\about3Pane.ftl
%lecho% "      • [Зірка] та [Теги] відхилені: Показати всі повідомлення, які не відмічені зірочкою і не мають тегів."                             >> localization\uk\messenger\about3Pane.ftl
%lecho% "      • [Тема] відкинута, а [тіло] вибрано: Показати всі повідомлення, в яких 'тема' не містить 'слово', а 'тіло' містить 'слово'."      >> localization\uk\messenger\about3Pane.ftl
%lecho% "      • [Будь-який з] з вимкненою опцією [Важливі] та вибраними опціями [Робота] і [Особисте]."                                          >> localization\uk\messenger\about3Pane.ftl
%lecho% "      Показати всі теговані повідомлення, які НЕ мають тегу 'Важливі' І які мають тег 'Робота' або 'Особисті'."                          >> localization\uk\messenger\about3Pane.ftl
