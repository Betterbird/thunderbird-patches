:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
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
%lecho% "movemailCantTruncateSpoolFile=Не удалось удалить блокирующий файл «%%S»."  >> chrome\ru\locale\ru\messenger\localMsgs.properties
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

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                              >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .label = Отображать панель вкладок вертикально" >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                                 >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                    >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .label = Показывать вложения над сообщением"    >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"                                 >> localization\ru\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                      >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .value = Восстановливать вкладок при запуске:" >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                                >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .label = Все вкладки"                          >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = t"                                >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                             >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .label = Системные вкладки"                    >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                                >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                                 >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .label = Нет"                                  >> localization\ru\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = n"                                >> localization\ru\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="      >> localization\ru\messenger\menubar.ftl
%lecho% "    .label = Широкий потоковый вид" >> localization\ru\messenger\menubar.ftl
%lecho% "    .accesskey = T"                 >> localization\ru\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="         >> localization\ru\messenger\menubar.ftl
%lecho% "    .label = Сложенный вид"         >> localization\ru\messenger\menubar.ftl
%lecho% "    .accesskey = S"                 >> localization\ru\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="            >> localization\ru\messenger\messenger.ftl
%lecho% "    .label = Править заголовки…"            >> localization\ru\messenger\messenger.ftl
%lecho% "    .accesskey = H"                         >> localization\ru\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Править заголовки"  >> localization\ru\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Отмена"            >> localization\ru\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Восстановить"     >> localization\ru\messenger\messenger.ftl
%lecho% "    .title = Показать значение в оригинале" >> localization\ru\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Обновить"          >> localization\ru\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                             >> localization\ru\messenger\about3Pane.ftl
%lecho% "    .title = Щелчок правой кнопкой мыши или нажатие Ctrl+Enter создаёт фильтр отрицательного условия." >> localization\ru\messenger\about3Pane.ftl
%lecho% "      Для текста и фильтра по тегам любая кнопка с отрицанием создаёт условие ‘И’"                     >> localization\ru\messenger\about3Pane.ftl
%lecho% "      Когда фильтр по тегам отрицателен, выбор кнопки тега добавляет соответствующие сообщения в список без тегов." >> localization\ru\messenger\about3Pane.ftl
%lecho% "      Например:"                                                                                       >> localization\ru\messenger\about3Pane.ftl
%lecho% "      • Негативное условие для [Избранное] и [Теги]: показать все сообщения, которые НЕ являются избранными или с отметкой." >> localization\ru\messenger\about3Pane.ftl
%lecho% "      • Негативное условие для [Тема], но положительное для [Текст]: показать все сообщения, где тема не содержит определённого слова, а текст - содержит." >> localization\ru\messenger\about3Pane.ftl
%lecho% "      • Негативное условие для [Любое] и [Важное], при выбранных [Работа] и [Личное]:"                 >> localization\ru\messenger\about3Pane.ftl
%lecho% "      Показать все сообщения с тегами, у которых НЕТ отметки ‘Важное’, и у которых есть отметка ‘Работа’ или ‘Личное’." >> localization\ru\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="             >> localization\ru\messenger\messenger.ftl
%lecho% "    .label = Отключить потоковый вид"        >> localization\ru\messenger\messenger.ftl
%lecho% "    .accesskey = U"                          >> localization\ru\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="      >> localization\ru\messenger\messenger.ftl
%lecho% "    .label = Включить потоковый вид обратно" >> localization\ru\messenger\messenger.ftl
%lecho% "    .accesskey = R"                          >> localization\ru\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="          >> localization\ru\messenger\accountSettings.ftl
%lecho% "  .label = Аккаунт выключен" >> localization\ru\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="            >> localization\ru\messenger\about3Pane.ftl
%lecho% "    .label = Искать совпадения в адресной книге" >> localization\ru\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Искать совпадения по имени (по первым буквам) или никнейма (точное соответствие) в ваших адресных книг" >> localization\ru\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\ru\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\ru\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\ru\locale\ru\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal =" >> localization\ru\messenger\menubar.ftl
%lecho% "    .label = Horizontal View"  >> localization\ru\messenger\menubar.ftl
%lecho% "    .accesskey = z"            >> localization\ru\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"Store updated articles\">" >> chrome\ru\locale\ru\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome\ru\locale\ru\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"For Atom or JSON feeds with the "'&lt;updated&gt;'" tag. If the publisher changes the value, store the article instead of treating it as a duplicate.\">" >> chrome\ru\locale\ru\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Store an archive of the web page with the article\">" >> chrome\ru\locale\ru\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\ru\locale\ru\messenger-newsblog\feed-subscriptions.dtd
