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
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="              >> localization\ru\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Показать сообщения без тегов" >> localization\ru\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                >> localization\ru\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Показывать сообщения с одним или несколькими тегами. Щелкните правой кнопкой мыши, чтобы отменить выбор тега." >> localization\ru\messenger\about3Pane.ftl

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
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                      >> localization\ru\messenger\menubar.ftl
%lecho% "    .label = Многострочный просмотр для всех папок" >> localization\ru\messenger\menubar.ftl

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

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/ru/file/bc8d9fcff386f8c2b02202fc8d2725ea76fa5d99/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Не удалось открыть файл почтового буфера «%%S»." >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Не удалось создать блокирующий файл «%%S». Для работы Movemail необходимо создание блокирующих файлов в каталоге почтового буфера. Для большинства систем достаточно установить этому каталогу права 01777." >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Не удалось удалить блокирующий файл «%%S»."         >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Не удалось уменьшить файл буфера «%%S»."     >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Не удалось найти файл почтового буфера."         >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Не удалось обработать файл буфера «%%S». Файл может быть повреждён или некорректен." >> chrome\ru\locale\ru\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                         >> chrome\ru\locale\ru\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="   >> localization\ru\messenger\accountManager.ftl
%lecho% "    .label = Movemail-Добавить аккаунт…" >> localization\ru\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                      >> localization\ru\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="             >> localization\ru\messenger\menubar.ftl
%lecho% "    .label = Movemail-Аккаунт…"          >> localization\ru\messenger\menubar.ftl
%lecho% "    .accesskey = M"                      >> localization\ru\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Непрочитанных: %%S" >> chrome\ru\locale\ru\messenger\messenger.properties
%lecho% "selectedMsgStatus=Выбранных: %%S"   >> chrome\ru\locale\ru\messenger\messenger.properties
%lecho% "totalMsgStatus=Всего: %%S"          >> chrome\ru\locale\ru\messenger\messenger.properties

:: New string from bug 1837152. Taken from about3Pane.ftl: folder-pane-get-all-messages-menuitem.label and folder-pane-get-all-messages-menuitem.accesskey
%lecho% "toolbar-get-all-messages-menuitem =" >> localization\ru\messenger\unifiedToolbar.ftl
%lecho% "  .label = Все новые сообщения"      >> localization\ru\messenger\unifiedToolbar.ftl
%lecho% "  .accesskey = с"                    >> localization\ru\messenger\unifiedToolbar.ftl
