# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/uk/locale/uk/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Додати нову групу" >> chrome/uk/locale/uk/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Тека автозапуску\">" >> chrome/uk/locale/uk/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="                           >> localization/uk/messenger/about3Pane.ftl
echo "    .tooltiptext = Показувати повідомлення без ключових слів" >> localization/uk/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                             >> localization/uk/messenger/about3Pane.ftl
echo "    .tooltiptext = Відображати повідомлення з одним або кількома ключовими словами. Клацніть правою кнопкою миші, щоб видалити вибір ключових слів." >> localization/uk/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/uk/messenger/preferences/preferences.ftl
echo "    .label = Зробити зашифровані повідомлення доступними для пошуку (зберігає розшифровану копію локально)" >> localization/uk/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="                    >> localization/uk/messenger/messengercompose/messengercompose.ftl
echo "    .label = Останній відкритий файл(и)..." >> localization/uk/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="            >> localization/uk/messenger/messengercompose/messengercompose.ftl
echo "    .label = Прикріпити останні файл(и)..." >> localization/uk/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                   >> localization/uk/messenger/menubar.ftl
echo "    .label = Багаторядковий перегляд усіх папок" >> localization/uk/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option ="    >> localization/uk/messenger/preferences/preferences.ftl
echo "    .label = Звичайний текст або HTML"  >> localization/uk/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Якщо у повідомленні не використовується стиль, надіслати звичайний текст. В іншому випадку надіслати HTML із резервним варіантом у вигляді звичайного тексту." >> localization/uk/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/uk/messenger/messengercompose/messengercompose.ftl
echo "    .label = Звичайний текст або HTML"  >> localization/uk/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = O"                     >> localization/uk/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/uk/file/86e0abeb9aaa97dfe5ab5199249171b957b725dd/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Неможливо відкрити файл поштового буфера %S."     >> chrome/uk/locale/uk/messenger/localMsgs.properties
echo "movemailCantCreateLock=Неможливо створити блокуючий файл %S. Для роботи Movemail необхідне створення таких файлів в каталозі поштового буфера. Для більшості систем досить встановити цьому каталогу має права 01777." >> chrome/uk/locale/uk/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Неможливо стерти блокуючий файл %S."                 >> chrome/uk/locale/uk/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Неможливо зменшити файл буфера %S." >> chrome/uk/locale/uk/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Неможливо знайти локальний файл поштового буфера." >> chrome/uk/locale/uk/messenger/localMsgs.properties
echo "movemailCantParseSpool=Не вдалося розібрати файл буфера %S. Файл може бути пошкоджений або недійсний." >> chrome/uk/locale/uk/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                           >> chrome/uk/locale/uk/messenger/messenger.properties

echo "account-action-add-movemail-account ="         >> localization/uk/messenger/accountManager.ftl
echo "    .label = Додати обліковий запис Movemail…" >> localization/uk/messenger/accountManager.ftl
echo "    .accesskey = M"                            >> localization/uk/messenger/accountManager.ftl
echo "file-new-movemail-account ="                   >> localization/uk/messenger/menubar.ftl
echo "    .label = Movemail-Обліковий запис..."      >> localization/uk/messenger/menubar.ftl
echo "    .accesskey = M"                            >> localization/uk/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Непрочитано: %S" >> chrome/uk/locale/uk/messenger/messenger.properties
echo "selectedMsgStatus=Обрано: %S"    >> chrome/uk/locale/uk/messenger/messenger.properties
echo "totalMsgStatus=Усього: %S"       >> chrome/uk/locale/uk/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                                      >> localization/uk/messenger/preferences/preferences.ftl
echo "    .label = Увімкнути вертикальні вкладки"                 >> localization/uk/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                                         >> localization/uk/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="                            >> localization/uk/messenger/preferences/preferences.ftl
echo "    .label = Відобразити список вкладень над повідомленням" >> localization/uk/messenger/preferences/preferences.ftl
echo "    .accesskey = o"                                         >> localization/uk/messenger/preferences/preferences.ftl

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
echo "restore-tabs-session-label ="                              >> localization/uk/messenger/preferences/preferences.ftl
echo "    .value = Відновлення вкладок під час запуску системи:" >> localization/uk/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                                        >> localization/uk/messenger/preferences/preferences.ftl
echo "    .label = Всі вкладки"                                  >> localization/uk/messenger/preferences/preferences.ftl
echo "    .accesskey = A"                                        >> localization/uk/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                                     >> localization/uk/messenger/preferences/preferences.ftl
echo "    .label = Системні вкладки"                             >> localization/uk/messenger/preferences/preferences.ftl
echo "    .accesskey = S"                                        >> localization/uk/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                                         >> localization/uk/messenger/preferences/preferences.ftl
echo "    .label = Ні"                                           >> localization/uk/messenger/preferences/preferences.ftl
echo "    .accesskey = K"                                        >> localization/uk/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread ="   >> localization/uk/messenger/menubar.ftl
echo "    .label = Широкий перегляд"   >> localization/uk/messenger/menubar.ftl
echo "    .accesskey = B"              >> localization/uk/messenger/menubar.ftl
echo "menu-view-layout-stacked ="      >> localization/uk/messenger/menubar.ftl
echo "    .label = Складений перегляд" >> localization/uk/messenger/menubar.ftl
echo "    .accesskey = S"              >> localization/uk/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="                >> localization/uk/messenger/messenger.ftl
echo "    .label = Редагувати заголовки..."           >> localization/uk/messenger/messenger.ftl
echo "    .accesskey = K"                             >> localization/uk/messenger/messenger.ftl
echo "msg-edit-dialog-title = Редагування заголовків" >> localization/uk/messenger/messenger.ftl
echo "msg-edit-cancel-button = Скасувати"             >> localization/uk/messenger/messenger.ftl
echo "msg-edit-restore-button = Відновити"            >> localization/uk/messenger/messenger.ftl
echo "    .title = Показати оригінальне значення"     >> localization/uk/messenger/messenger.ftl
echo "msg-edit-update-button = Оновити"               >> localization/uk/messenger/messenger.ftl

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
echo "quick-filter-bar-negate ="                                                                                                               >> localization/uk/messenger/about3Pane.ftl
echo "    .title = Натискання правої кнопки миші або одночасне натискання клавіш Ctrl та Enter на кнопці призводить до скасування дії."        >> localization/uk/messenger/about3Pane.ftl
echo "      Для фільтра тексту та тегів будь-яка відхилена кнопка створює умову 'І'."                                                          >> localization/uk/messenger/about3Pane.ftl
echo "      Коли фільтр за тегами інвертований (відкинутий), вибір кнопки тега додає відповідні повідомлення до списку повідомлень без тегів." >> localization/uk/messenger/about3Pane.ftl
echo "      Приклади:"                                                                                                                         >> localization/uk/messenger/about3Pane.ftl
echo "      • [Зірка] та [Теги] відхилені: Показати всі повідомлення, які не відмічені зірочкою і не мають тегів."                             >> localization/uk/messenger/about3Pane.ftl
echo "      • [Тема] відкинута, а [тіло] вибрано: Показати всі повідомлення, в яких 'тема' не містить 'слово', а 'тіло' містить 'слово'."      >> localization/uk/messenger/about3Pane.ftl
echo "      • [Будь-який з] з вимкненою опцією [Важливі] та вибраними опціями [Робота] і [Особисте]."                                          >> localization/uk/messenger/about3Pane.ftl
echo "      Показати всі теговані повідомлення, які НЕ мають тегу 'Важливі' І які мають тег 'Робота' або 'Особисті'."                          >> localization/uk/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="                >> localization/uk/messenger/messenger.ftl
echo "    .label = Видалити з ланцюжка"               >> localization/uk/messenger/messenger.ftl
echo "    .accesskey = U"                             >> localization/uk/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="         >> localization/uk/messenger/messenger.ftl
echo "    .label = Повернути до початкового ланцюжка" >> localization/uk/messenger/messenger.ftl
echo "    .accesskey = R"                             >> localization/uk/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="                    >> localization/uk/messenger/accountSettings.ftl
echo "  .label = Обліковий запис відключено" >> localization/uk/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook =" >> localization/uk/messenger/about3Pane.ftl
echo "    .label = Порівняти з контактами"  >> localization/uk/messenger/about3Pane.ftl
echo "    .tooltiptext = Зіставлення за ім'ям для відображення (починається з) або псевдонімом (точним) з ваших контактів" >> localization/uk/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/uk/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/uk/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/uk/locale/uk/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal ="      >> localization/uk/messenger/menubar.ftl
echo "    .label = Горизонтальний вигляд" >> localization/uk/messenger/menubar.ftl
echo "    .accesskey = z"                 >> localization/uk/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Зберігати оновлені статті\">" >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"                     >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"Для стрічок Atom або JSON з тегом &lt;updated&gt;. Якщо видавець змінює значення, стаття зберігається, а не вважається дублікатом.\">" >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Зберігати архів вебсторінки разом зі статтею\">" >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/uk/locale/uk/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                       >> localization/uk/messenger/folderprops.ftl
echo "  .label = Запускати фільтри для вхідних повідомлень" >> localization/uk/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/uk/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Деякі дані були видалені сервером. Перевірте консоль помилок для отримання подробиць." >> localization/uk/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/uk/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Не вдалося виконати синхронізацію з сервером. Перевірте консоль помилок для отримання подробиць." >> localization/uk/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort =" >> localization/uk/messenger/about3Pane.ftl
echo "  .label = Скинути порядок папок" >> localization/uk/messenger/about3Pane.ftl
echo "  .accesskey = К"                 >> localization/uk/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts ="                         >> localization/uk/messenger/messenger.ftl
echo "  .label = Пошук у всіх поштових облікових записах" >> localization/uk/messenger/messenger.ftl
echo "  .accesskey = п"                                   >> localization/uk/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=Тема" >> chrome/uk/locale/uk/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Змістом" >> chrome/uk/locale/uk/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = Категорії" >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Категорії" >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Сортувати за категоріями"                     >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="            >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Категорії"                                    >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                    >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Категорії"                               >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                  >> localization/uk/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Категорії"                     >> localization/uk/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Додати категорію"                   >> localization/uk/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Категорія"                  >> localization/uk/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Назва категорії"            >> localization/uk/messenger/addressbook/vcard.ftl
echo "Categories=Категорії" >> chrome/uk/locale/uk/messenger/search-attributes.properties
