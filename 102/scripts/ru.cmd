:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Добавить новую группу" >> chrome\ru\locale\ru\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Стартовая папка\">" >> chrome\ru\locale\ru\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Показать сообщения без тегов\">" >> chrome\ru\locale\ru\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Показывать сообщения с одним или несколькими тегами. Щелкните правой кнопкой мыши, чтобы отменить выбор тега.\">" >> chrome\ru\locale\ru\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .label = Сделать зашифрованные сообщения доступными для поиска (сохраняет расшифрованную копию локально)" >> localization\ru\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                         >> localization\ru\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Последний открытый файл(ы)…"        >> localization\ru\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="                 >> localization\ru\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Прикрепить недавно открытые файлы…" >> localization\ru\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Многострочный просмотр для всех папок\">" >> chrome\ru\locale\ru\messenger\messenger.dtd

:: Original strings:
:: mail-multiline-all-folders =
::     .label = Multi-line View On All Folders
:: mail-multiline-individual-folders =
::     .label = Multi-line View Via Subject Column
:: mail-multiline-no-folders =
::     .label = No Multi-line View
%lecho% "mail-multiline-all-folders ="                       >> localization\ru\messenger\menubar.ftl
%lecho% "    .label = Многострочный просмотр для всех папок" >> localization\ru\messenger\menubar.ftl
%lecho% "mail-multiline-individual-folders ="                >> localization\ru\messenger\menubar.ftl
%lecho% "    .label = Многострочный вид с использованием столбца темы" >> localization\ru\messenger\menubar.ftl
%lecho% "mail-multiline-no-folders ="                        >> localization\ru\messenger\menubar.ftl
%lecho% "    .label = Нет многострочного просмотра"          >> localization\ru\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .label = Обычный текст или HTML" >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Если в сообщении не используются стили, оно будет отправлено в виде обычного текста. В противном случае оно будет отправлено в виде HTML." >> localization\ru\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\ru\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Обычный текст или HTML"    >> localization\ru\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\ru\messenger\messengercompose\messengercompose.ftl

:: Fix missing ! in the about box.
sed -i -e 's/ENTITY helpus.end.*""/ENTITY helpus.end "!"/' chrome\ru\locale\ru\messenger\aboutDialog.dtd

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/ru/file/bc8d9fcff386f8c2b02202fc8d2725ea76fa5d99/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Не удалось открыть файл почтового буфера «%S»." >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Не удалось создать блокирующий файл «%S». Для работы Movemail необходимо создание блокирующих файлов в каталоге почтового буфера. Для большинства систем достаточно установить этому каталогу права 01777." >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Не удалось удалить блокирующий файл «%S»."         >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Не удалось уменьшить файл буфера «%S»."     >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Не удалось найти файл почтового буфера."        >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Не удалось обработать файл буфера «%S». Файл может быть повреждён или некорректен." >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                        >> chrome\ru\locale\ru\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="   >> localization\ru\messenger\accountManager.ftl
%lecho% "    .label = Movemail-Добавить аккаунт…" >> localization\ru\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                      >> localization\ru\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="             >> localization\ru\messenger\menubar.ftl
%lecho% "    .label = Movemail-Аккаунт…"          >> localization\ru\messenger\menubar.ftl
%lecho% "    .accesskey = M"                      >> localization\ru\messenger\menubar.ftl
