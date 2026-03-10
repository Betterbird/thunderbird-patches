# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/uk/locale/uk/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
lessecho "groupButtonTooltipText=Додати нову групу" >> chrome/uk/locale/uk/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
lessecho "<!ENTITY folderContextStartupFolder.label \"Тека автозапуску\">" >> chrome/uk/locale/uk/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
lessecho "quick-filter-bar-untagged-button ="                           >> localization/uk/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Показувати повідомлення без ключових слів" >> localization/uk/messenger/about3Pane.ftl
lessecho "quick-filter-bar-tagged-button ="                             >> localization/uk/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Відображати повідомлення з одним або кількома ключовими словами. Клацніть правою кнопкою миші, щоб видалити вибір ключових слів." >> localization/uk/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
lessecho "enable-gloda-search-encrypted-label =" >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .label = Зробити зашифровані повідомлення доступними для пошуку (зберігає розшифровану копію локально)" >> localization/uk/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
lessecho "menuitem-recent-files ="                    >> localization/uk/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Останній відкритий файл(и)..." >> localization/uk/messenger/messengercompose/messengercompose.ftl
lessecho "context-menuitem-recent-files ="            >> localization/uk/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Прикріпити останні файл(и)..." >> localization/uk/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
lessecho "menu-multi-line-all-folders ="                   >> localization/uk/messenger/menubar.ftl
lessecho "    .label = Багаторядковий перегляд усіх папок" >> localization/uk/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
lessecho "compose-send-plain-or-html-option ="    >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .label = Звичайний текст або HTML"  >> localization/uk/messenger/preferences/preferences.ftl
lessecho "compose-send-plain-or-html-description = Якщо у повідомленні не використовується стиль, надіслати звичайний текст. В іншому випадку надіслати HTML із резервним варіантом у вигляді звичайного тексту." >> localization/uk/messenger/preferences/preferences.ftl

lessecho "compose-send-plain-or-html-menu-item =" >> localization/uk/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Звичайний текст або HTML"  >> localization/uk/messenger/messengercompose/messengercompose.ftl
lessecho "    .accesskey = O"                     >> localization/uk/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/uk/file/86e0abeb9aaa97dfe5ab5199249171b957b725dd/mail/chrome/messenger/localMsgs.properties
lessecho "movemailCantOpenSpoolFile=Неможливо відкрити файл поштового буфера %S."     >> chrome/uk/locale/uk/messenger/localMsgs.properties
lessecho "movemailCantCreateLock=Неможливо створити блокуючий файл %S. Для роботи Movemail необхідне створення таких файлів в каталозі поштового буфера. Для більшості систем досить встановити цьому каталогу має права 01777." >> chrome/uk/locale/uk/messenger/localMsgs.properties
lessecho "movemailCantDeleteLock=Неможливо стерти блокуючий файл %S."                 >> chrome/uk/locale/uk/messenger/localMsgs.properties
lessecho "movemailCantTruncateSpoolFile=Неможливо зменшити файл буфера %S." >> chrome/uk/locale/uk/messenger/localMsgs.properties
lessecho "movemailSpoolFileNotFound=Неможливо знайти локальний файл поштового буфера." >> chrome/uk/locale/uk/messenger/localMsgs.properties
lessecho "movemailCantParseSpool=Не вдалося розібрати файл буфера %S. Файл може бути пошкоджений або недійсний." >> chrome/uk/locale/uk/messenger/localMsgs.properties
lessecho "serverType-movemail=Unix Movemail"                                           >> chrome/uk/locale/uk/messenger/messenger.properties

lessecho "account-action-add-movemail-account ="         >> localization/uk/messenger/accountManager.ftl
lessecho "    .label = Додати обліковий запис Movemail…" >> localization/uk/messenger/accountManager.ftl
lessecho "    .accesskey = M"                            >> localization/uk/messenger/accountManager.ftl
lessecho "file-new-movemail-account ="                   >> localization/uk/messenger/menubar.ftl
lessecho "    .label = Movemail-Обліковий запис..."      >> localization/uk/messenger/menubar.ftl
lessecho "    .accesskey = M"                            >> localization/uk/messenger/menubar.ftl

# Unread/seleted status
lessecho "unreadMsgStatus=Непрочитано: %S" >> chrome/uk/locale/uk/messenger/messenger.properties
lessecho "selectedMsgStatus=Обрано: %S"    >> chrome/uk/locale/uk/messenger/messenger.properties
lessecho "totalMsgStatus=Усього: %S"       >> chrome/uk/locale/uk/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
lessecho "vertical-tabs-label ="                                      >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .label = Увімкнути вертикальні вкладки"                 >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .accesskey = v"                                         >> localization/uk/messenger/preferences/preferences.ftl
lessecho "attachments-display-top-label ="                            >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .label = Відобразити список вкладень над повідомленням" >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .accesskey = o"                                         >> localization/uk/messenger/preferences/preferences.ftl

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
lessecho "restore-tabs-session-label ="                              >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .value = Відновлення вкладок під час запуску системи:" >> localization/uk/messenger/preferences/preferences.ftl
lessecho "restore-all-tabs ="                                        >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .label = Всі вкладки"                                  >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .accesskey = A"                                        >> localization/uk/messenger/preferences/preferences.ftl
lessecho "restore-system-tabs ="                                     >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .label = Системні вкладки"                             >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .accesskey = S"                                        >> localization/uk/messenger/preferences/preferences.ftl
lessecho "restore-no-tabs ="                                         >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .label = Ні"                                           >> localization/uk/messenger/preferences/preferences.ftl
lessecho "    .accesskey = K"                                        >> localization/uk/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
lessecho "menu-view-layout-widethread ="   >> localization/uk/messenger/menubar.ftl
lessecho "    .label = Широкий перегляд"   >> localization/uk/messenger/menubar.ftl
lessecho "    .accesskey = B"              >> localization/uk/messenger/menubar.ftl
lessecho "menu-view-layout-stacked ="      >> localization/uk/messenger/menubar.ftl
lessecho "    .label = Складений перегляд" >> localization/uk/messenger/menubar.ftl
lessecho "    .accesskey = S"              >> localization/uk/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
lessecho "other-action-msg-edit-headers ="                >> localization/uk/messenger/messenger.ftl
lessecho "    .label = Редагувати заголовки..."           >> localization/uk/messenger/messenger.ftl
lessecho "    .accesskey = K"                             >> localization/uk/messenger/messenger.ftl
lessecho "msg-edit-dialog-title = Редагування заголовків" >> localization/uk/messenger/messenger.ftl
lessecho "msg-edit-cancel-button = Скасувати"             >> localization/uk/messenger/messenger.ftl
lessecho "msg-edit-restore-button = Відновити"            >> localization/uk/messenger/messenger.ftl
lessecho "    .title = Показати оригінальне значення"     >> localization/uk/messenger/messenger.ftl
lessecho "msg-edit-update-button = Оновити"               >> localization/uk/messenger/messenger.ftl

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
lessecho "quick-filter-bar-negate ="                                                                                                               >> localization/uk/messenger/about3Pane.ftl
lessecho "    .title = Натискання правої кнопки миші або одночасне натискання клавіш Ctrl та Enter на кнопці призводить до скасування дії."        >> localization/uk/messenger/about3Pane.ftl
lessecho "      Для фільтра тексту та тегів будь-яка відхилена кнопка створює умову 'І'."                                                          >> localization/uk/messenger/about3Pane.ftl
lessecho "      Коли фільтр за тегами інвертований (відкинутий), вибір кнопки тега додає відповідні повідомлення до списку повідомлень без тегів." >> localization/uk/messenger/about3Pane.ftl
lessecho "      Приклади:"                                                                                                                         >> localization/uk/messenger/about3Pane.ftl
lessecho "      • [Зірка] та [Теги] відхилені: Показати всі повідомлення, які не відмічені зірочкою і не мають тегів."                             >> localization/uk/messenger/about3Pane.ftl
lessecho "      • [Тема] відкинута, а [тіло] вибрано: Показати всі повідомлення, в яких 'тема' не містить 'слово', а 'тіло' містить 'слово'."      >> localization/uk/messenger/about3Pane.ftl
lessecho "      • [Будь-який з] з вимкненою опцією [Важливі] та вибраними опціями [Робота] і [Особисте]."                                          >> localization/uk/messenger/about3Pane.ftl
lessecho "      Показати всі теговані повідомлення, які НЕ мають тегу 'Важливі' І які мають тег 'Робота' або 'Особисті'."                          >> localization/uk/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
lessecho "mail-context-unthread-message ="                >> localization/uk/messenger/messenger.ftl
lessecho "    .label = Видалити з ланцюжка"               >> localization/uk/messenger/messenger.ftl
lessecho "    .accesskey = U"                             >> localization/uk/messenger/messenger.ftl
lessecho "mail-context-reset-message-threading ="         >> localization/uk/messenger/messenger.ftl
lessecho "    .label = Повернути до початкового ланцюжка" >> localization/uk/messenger/messenger.ftl
lessecho "    .accesskey = R"                             >> localization/uk/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
lessecho "account-disabled ="                    >> localization/uk/messenger/accountSettings.ftl
lessecho "  .label = Обліковий запис відключено" >> localization/uk/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
lessecho "quick-filter-bar-match-addressbook =" >> localization/uk/messenger/about3Pane.ftl
lessecho "    .label = Порівняти з контактами"  >> localization/uk/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Зіставлення за ім'ям для відображення (починається з) або псевдонімом (точним) з ваших контактів" >> localization/uk/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/uk/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/uk/messenger/preferences/preferences.ftl

lessecho "Expires=Expires" >> chrome/uk/locale/uk/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
lessecho "menu-view-layout-horizontal ="      >> localization/uk/messenger/menubar.ftl
lessecho "    .label = Горизонтальний вигляд" >> localization/uk/messenger/menubar.ftl
lessecho "    .accesskey = z"                 >> localization/uk/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
lessecho "<!ENTITY storeOnUpdated.label \"Зберігати оновлені статті\">" >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdated.accesskey \"u\">"                     >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdatedInfo.label \"Для стрічок Atom або JSON з тегом "'&lt;updated&gt;'". Якщо видавець змінює значення, стаття зберігається, а не вважається дублікатом.\">" >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.label \"Зберігати архів вебсторінки разом зі статтею\">" >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
lessecho "run-filters-on-incoming-msgs ="                       >> localization/uk/messenger/folderprops.ftl
lessecho "  .label = Запускати фільтри для вхідних повідомлень" >> localization/uk/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
lessecho "carddav-directory-sync-warning =" >> localization/uk/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Деякі дані були видалені сервером. Перевірте консоль помилок для отримання подробиць." >> localization/uk/messenger/addressbook/abCardDAVProperties.ftl
lessecho "carddav-directory-sync-failed =" >> localization/uk/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Не вдалося виконати синхронізацію з сервером. Перевірте консоль помилок для отримання подробиць." >> localization/uk/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
lessecho "folder-pane-context-reset-sort =" >> localization/uk/messenger/about3Pane.ftl
lessecho "  .label = Скинути порядок папок" >> localization/uk/messenger/about3Pane.ftl
lessecho "  .accesskey = К"                 >> localization/uk/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
lessecho "search-all-mail-accounts ="                         >> localization/uk/messenger/messenger.ftl
lessecho "  .label = Пошук у всіх поштових облікових записах" >> localization/uk/messenger/messenger.ftl
lessecho "  .accesskey = п"                                   >> localization/uk/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
lessecho "gloda.message.attr._subjectMatches.facetNameLabel=Тема" >> chrome/uk/locale/uk/messenger/gloda.properties
lessecho "gloda.message.attr._bodyMatches.facetNameLabel=Змістом" >> chrome/uk/locale/uk/messenger/gloda.properties

# Categories:
lessecho "about-addressbook-details-categories-header = Категорії" >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-header-categories2 = Категорії" >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = Сортувати за категоріями"                     >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-label-categories2 ="            >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .label = Категорії"                                    >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-cell-categories2 ="                    >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .aria-label = Категорії"                               >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = { \$title }"                                  >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
lessecho "vcard-categories-header = Категорії"                     >> localization/uk/messenger/addressbook/vcard.ftl
lessecho "vcard-category-add = Додати категорію"                   >> localization/uk/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-label = Категорія"                  >> localization/uk/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-title = Назва категорії"            >> localization/uk/messenger/addressbook/vcard.ftl
lessecho "Categories=Категорії" >> chrome/uk/locale/uk/messenger/search-attributes.properties
