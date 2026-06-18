# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/ru/locale/ru/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Добавить новую группу" >> chrome/ru/locale/ru/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Стартовая папка\">" >> chrome/ru/locale/ru/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="              >> localization/ru/messenger/about3Pane.ftl
echo "    .tooltiptext = Показать сообщения без тегов" >> localization/ru/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                >> localization/ru/messenger/about3Pane.ftl
echo "    .tooltiptext = Показывать сообщения с одним или несколькими тегами. Щелкните правой кнопкой мыши, чтобы отменить выбор тега." >> localization/ru/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/ru/messenger/preferences/preferences.ftl
echo "    .label = Сделать зашифрованные сообщения доступными для поиска (сохраняет расшифрованную копию локально)" >> localization/ru/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="                         >> localization/ru/messenger/messengercompose/messengercompose.ftl
echo "    .label = Последний открытый файл(ы)…"        >> localization/ru/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="                 >> localization/ru/messenger/messengercompose/messengercompose.ftl
echo "    .label = Прикрепить недавно открытые файлы…" >> localization/ru/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                      >> localization/ru/messenger/menubar.ftl
echo "    .label = Многострочный просмотр для всех папок" >> localization/ru/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option =" >> localization/ru/messenger/preferences/preferences.ftl
echo "    .label = Обычный текст или HTML" >> localization/ru/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Если в сообщении не используются стили, оно будет отправлено в виде обычного текста. В противном случае оно будет отправлено в виде HTML." >> localization/ru/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/ru/messenger/messengercompose/messengercompose.ftl
echo "    .label = Обычный текст или HTML"    >> localization/ru/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = O"                     >> localization/ru/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/ru/file/bc8d9fcff386f8c2b02202fc8d2725ea76fa5d99/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Не удалось открыть файл почтового буфера «%S»." >> chrome/ru/locale/ru/messenger/localMsgs.properties
echo "movemailCantCreateLock=Не удалось создать блокирующий файл «%S». Для работы Movemail необходимо создание блокирующих файлов в каталоге почтового буфера. Для большинства систем достаточно установить этому каталогу права 01777." >> chrome/ru/locale/ru/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Не удалось удалить блокирующий файл «%S»."         >> chrome/ru/locale/ru/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Не удалось удалить блокирующий файл «%S»."  >> chrome/ru/locale/ru/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Не удалось найти файл почтового буфера."         >> chrome/ru/locale/ru/messenger/localMsgs.properties
echo "movemailCantParseSpool=Не удалось обработать файл буфера «%S». Файл может быть повреждён или некорректен." >> chrome/ru/locale/ru/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                         >> chrome/ru/locale/ru/messenger/messenger.properties

echo "account-action-add-movemail-account ="   >> localization/ru/messenger/accountManager.ftl
echo "    .label = Movemail-Добавить аккаунт…" >> localization/ru/messenger/accountManager.ftl
echo "    .accesskey = M"                      >> localization/ru/messenger/accountManager.ftl
echo "file-new-movemail-account ="             >> localization/ru/messenger/menubar.ftl
echo "    .label = Movemail-Аккаунт…"          >> localization/ru/messenger/menubar.ftl
echo "    .accesskey = M"                      >> localization/ru/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Непрочитанных: %S" >> chrome/ru/locale/ru/messenger/messenger.properties
echo "selectedMsgStatus=Выбранных: %S"   >> chrome/ru/locale/ru/messenger/messenger.properties
echo "totalMsgStatus=Всего: %S"          >> chrome/ru/locale/ru/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                              >> localization/ru/messenger/preferences/preferences.ftl
echo "    .label = Отображать панель вкладок вертикально" >> localization/ru/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                                 >> localization/ru/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="                    >> localization/ru/messenger/preferences/preferences.ftl
echo "    .label = Показывать вложения над сообщением"    >> localization/ru/messenger/preferences/preferences.ftl
echo "    .accesskey = p"                                 >> localization/ru/messenger/preferences/preferences.ftl

# Original strings:
# restore-tabs-session-label =
#     .value = Restore tabs on startup:
# restore-all-tabs =
#     .label = All tabs
#     .accesskey = t
# restore-system-tabs =
#     .label = System tabs
#     .accesskey = s
# restore-no-tabs =
#     .label = None
#     .accesskey = n
echo "restore-tabs-session-label ="                      >> localization/ru/messenger/preferences/preferences.ftl
echo "    .value = Восстановливать вкладок при запуске:" >> localization/ru/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                                >> localization/ru/messenger/preferences/preferences.ftl
echo "    .label = Все вкладки"                          >> localization/ru/messenger/preferences/preferences.ftl
echo "    .accesskey = t"                                >> localization/ru/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                             >> localization/ru/messenger/preferences/preferences.ftl
echo "    .label = Системные вкладки"                    >> localization/ru/messenger/preferences/preferences.ftl
echo "    .accesskey = s"                                >> localization/ru/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                                 >> localization/ru/messenger/preferences/preferences.ftl
echo "    .label = Нет"                                  >> localization/ru/messenger/preferences/preferences.ftl
echo "    .accesskey = n"                                >> localization/ru/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread ="      >> localization/ru/messenger/menubar.ftl
echo "    .label = Широкий потоковый вид" >> localization/ru/messenger/menubar.ftl
echo "    .accesskey = T"                 >> localization/ru/messenger/menubar.ftl
echo "menu-view-layout-stacked ="         >> localization/ru/messenger/menubar.ftl
echo "    .label = Сложенный вид"         >> localization/ru/messenger/menubar.ftl
echo "    .accesskey = S"                 >> localization/ru/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="            >> localization/ru/messenger/messenger.ftl
echo "    .label = Править заголовки…"            >> localization/ru/messenger/messenger.ftl
echo "    .accesskey = H"                         >> localization/ru/messenger/messenger.ftl
echo "msg-edit-dialog-title = Править заголовки"  >> localization/ru/messenger/messenger.ftl
echo "msg-edit-cancel-button = Отмена"            >> localization/ru/messenger/messenger.ftl
echo "msg-edit-restore-button = Восстановить"     >> localization/ru/messenger/messenger.ftl
echo "    .title = Показать значение в оригинале" >> localization/ru/messenger/messenger.ftl
echo "msg-edit-update-button = Обновить"          >> localization/ru/messenger/messenger.ftl

# Original strings:
# quick-filter-bar-negate =
#     .title = Right-click or Ctrl+Enter on a button negates the result.
#       For the text and tag filter, any negated button creates an AND condition.
#       When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages.
#       Examples:
#       • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’.
#       • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”.
#       • [Any of] with [Important] negated and [Work] and [Personal] selected:
#       Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag.
echo "quick-filter-bar-negate ="                                                                             >> localization/ru/messenger/about3Pane.ftl
echo "    .title = Щелчок правой кнопкой мыши или нажатие Ctrl+Enter создаёт фильтр отрицательного условия." >> localization/ru/messenger/about3Pane.ftl
echo "      Для текста и фильтра по тегам любая кнопка с отрицанием создаёт условие ‘И’"                     >> localization/ru/messenger/about3Pane.ftl
echo "      Когда фильтр по тегам отрицателен, выбор кнопки тега добавляет соответствующие сообщения в список без тегов." >> localization/ru/messenger/about3Pane.ftl
echo "      Например:"                                                                                       >> localization/ru/messenger/about3Pane.ftl
echo "      • Негативное условие для [Избранное] и [Теги]: показать все сообщения, которые НЕ являются избранными или с отметкой." >> localization/ru/messenger/about3Pane.ftl
echo "      • Негативное условие для [Тема], но положительное для [Текст]: показать все сообщения, где тема не содержит определённого слова, а текст - содержит." >> localization/ru/messenger/about3Pane.ftl
echo "      • Негативное условие для [Любое] и [Важное], при выбранных [Работа] и [Личное]:"                 >> localization/ru/messenger/about3Pane.ftl
echo "      Показать все сообщения с тегами, у которых НЕТ отметки ‘Важное’, и у которых есть отметка ‘Работа’ или ‘Личное’." >> localization/ru/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="             >> localization/ru/messenger/messenger.ftl
echo "    .label = Отключить потоковый вид"        >> localization/ru/messenger/messenger.ftl
echo "    .accesskey = U"                          >> localization/ru/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="      >> localization/ru/messenger/messenger.ftl
echo "    .label = Включить потоковый вид обратно" >> localization/ru/messenger/messenger.ftl
echo "    .accesskey = R"                          >> localization/ru/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="          >> localization/ru/messenger/accountSettings.ftl
echo "  .label = Аккаунт выключен" >> localization/ru/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="            >> localization/ru/messenger/about3Pane.ftl
echo "    .label = Искать совпадения в адресной книге" >> localization/ru/messenger/about3Pane.ftl
echo "    .tooltiptext = Искать совпадения по имени (по первым буквам) или никнейма (точное соответствие) в ваших адресных книг" >> localization/ru/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/ru/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/ru/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/ru/locale/ru/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal ="   >> localization/ru/messenger/menubar.ftl
echo "    .label = Горизонтальный вид" >> localization/ru/messenger/menubar.ftl
echo "    .accesskey = z"              >> localization/ru/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Сохранять обновлённые статьи\">" >> chrome/ru/locale/ru/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"                        >> chrome/ru/locale/ru/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"Для лент Atom или JSON с тегом &lt;updated&gt;. Если издатель изменит значение, статья будет сохранена, а не распознана как дубликат.\">" >> chrome/ru/locale/ru/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Сохранять архив веб-страницы вместе со статьёй\">" >> chrome/ru/locale/ru/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/ru/locale/ru/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                      >> localization/ru/messenger/folderprops.ftl
echo "  .label = Запускать фильтры для входящих сообщений" >> localization/ru/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/ru/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Некоторые данные были отброшены сервером. Подробности можно найти в консоли ошибок." >> localization/ru/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/ru/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Сбой синхронизации с сервером. Подробности можно найти в консоли ошибок." >> localization/ru/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort ="  >> localization/ru/messenger/about3Pane.ftl
echo "  .label = Сбросить порядок папок" >> localization/ru/messenger/about3Pane.ftl
echo "  .accesskey = К"                  >> localization/ru/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts ="                  >> localization/ru/messenger/messenger.ftl
echo "  .label = Поиск по всем почтовым аккаунтам" >> localization/ru/messenger/messenger.ftl
echo "  .accesskey = п"                            >> localization/ru/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=Тема" >> chrome/ru/locale/ru/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Телу"    >> chrome/ru/locale/ru/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = Категории" >> localization/ru/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Категории" >> localization/ru/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Сортировать по категориям"                    >> localization/ru/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="            >> localization/ru/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Категории"                                    >> localization/ru/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                    >> localization/ru/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Категории"                               >> localization/ru/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                  >> localization/ru/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Категории"                     >> localization/ru/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Добавить категорию"                 >> localization/ru/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Категория"                  >> localization/ru/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Название категории"         >> localization/ru/messenger/addressbook/vcard.ftl
echo "Categories=Категории" >> chrome/ru/locale/ru/messenger/search-attributes.properties
