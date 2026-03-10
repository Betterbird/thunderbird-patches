# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/pl/locale/pl/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
lessecho "groupButtonTooltipText=Dodaj nową grupę" >> chrome/pl/locale/pl/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
lessecho "<!ENTITY folderContextStartupFolder.label \"Folder początkowy\">" >> chrome/pl/locale/pl/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
lessecho "quick-filter-bar-untagged-button ="              >> localization/pl/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Pokaż wiadomości bez etykiet" >> localization/pl/messenger/about3Pane.ftl
lessecho "quick-filter-bar-tagged-button ="                >> localization/pl/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Pokaż wiadomości posiadające jedną lub więcej etykietę. Kliknij prawym przyciskiem myszy, aby wyczyścić wybór poszczególnych etykiet." >> localization/pl/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
lessecho "enable-gloda-search-encrypted-label =" >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .label = Włącz wyszukiwanie w zaszyfrowanych wiadomościach (przechowuje lokalnie odszyfrowaną kopię)" >> localization/pl/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
lessecho "menuitem-recent-files ="             >> localization/pl/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Ostatnie pliki…"        >> localization/pl/messenger/messengercompose/messengercompose.ftl
lessecho "context-menuitem-recent-files ="     >> localization/pl/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Załącz ostatnie pliki…" >> localization/pl/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
lessecho "menu-multi-line-all-folders ="                            >> localization/pl/messenger/menubar.ftl
lessecho "    .label = Widok wielu wierszy we wszystkich folderach" >> localization/pl/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
lessecho "compose-send-plain-or-html-option =" >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .label = Zwykły tekst lub HTML"  >> localization/pl/messenger/preferences/preferences.ftl
lessecho "compose-send-plain-or-html-description = Jeśli wiadomość nie zawiera żadnych stylów, wyślij zwykły tekst. W przeciwnym razie, wyślij tylko HTML." >> localization/pl/messenger/preferences/preferences.ftl

lessecho "compose-send-plain-or-html-menu-item =" >> localization/pl/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Zwykły tekst lub HTML"     >> localization/pl/messenger/messengercompose/messengercompose.ftl
lessecho "    .accesskey = O"                     >> localization/pl/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/pl/file/619e43c2d9f9374c770f964c810182d978b5d74e/mail/chrome/messenger/localMsgs.properties
lessecho "movemailCantOpenSpoolFile=Otworzenie pliku poczty %S było niemożliwe."    >> chrome/pl/locale/pl/messenger/localMsgs.properties
lessecho "movemailCantCreateLock=Utworzenie pliku blokującego %S było niemożliwe. Dostęp do poczty Movemail wymaga możliwości tworzenia plików blokujących w systemowym katalogu poczty. W przypadku większości systemów wystarczy ustawić prawa dostępu do systemowego katalogu poczty na 01777." >> chrome/pl/locale/pl/messenger/localMsgs.properties
lessecho "movemailCantDeleteLock=Usunięcie pliku blokującego %S było niemożliwe."   >> chrome/pl/locale/pl/messenger/localMsgs.properties
lessecho "movemailCantTruncateSpoolFile=Skrócenie pliku poczty %S było niemożliwe." >> chrome/pl/locale/pl/messenger/localMsgs.properties
lessecho "movemailSpoolFileNotFound=Odnalezienie pliku poczty było niemożliwe."      >> chrome/pl/locale/pl/messenger/localMsgs.properties
lessecho "movemailCantParseSpool=Wystąpił błąd podczas wczytywania pliku %S. Plik poczty może być uszkodzony lub nieprawidłowy." >> chrome/pl/locale/pl/messenger/localMsgs.properties
lessecho "serverType-movemail=Unix Movemail"                                         >> chrome/pl/locale/pl/messenger/messenger.properties

lessecho "account-action-add-movemail-account =" >> localization/pl/messenger/accountManager.ftl
lessecho "    .label = Dodaj konto Movemail…"    >> localization/pl/messenger/accountManager.ftl
lessecho "    .accesskey = M"                    >> localization/pl/messenger/accountManager.ftl
lessecho "file-new-movemail-account ="           >> localization/pl/messenger/menubar.ftl
lessecho "    .label = Konto Movemail…"          >> localization/pl/messenger/menubar.ftl
lessecho "    .accesskey = M"                    >> localization/pl/messenger/menubar.ftl

# Unread/seleted status
lessecho "unreadMsgStatus=Nieprzeczytane: %S" >> chrome/pl/locale/pl/messenger/messenger.properties
lessecho "selectedMsgStatus=Zaznaczone: %S"   >> chrome/pl/locale/pl/messenger/messenger.properties
lessecho "totalMsgStatus=Razem: %S"           >> chrome/pl/locale/pl/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
lessecho "vertical-tabs-label ="                       >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .label = Wyświetlaj pasek kart w pionie" >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = p"                          >> localization/pl/messenger/preferences/preferences.ftl
lessecho "attachments-display-top-label ="             >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .label = Wyświetlaj listę załączników nad wiadomością" >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = n"                          >> localization/pl/messenger/preferences/preferences.ftl

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
lessecho "restore-tabs-session-label ="                      >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .value = Przywróć karty podczas uruchamiania:" >> localization/pl/messenger/preferences/preferences.ftl
lessecho "restore-all-tabs ="                                >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .label = Wszystkie"                            >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = W"                                >> localization/pl/messenger/preferences/preferences.ftl
lessecho "restore-system-tabs ="                             >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .label = Systemowe"                            >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = S"                                >> localization/pl/messenger/preferences/preferences.ftl
lessecho "restore-no-tabs ="                                 >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .label = Żadne"                                >> localization/pl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = Ż"                                >> localization/pl/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
lessecho "menu-view-layout-widethread =" >> localization/pl/messenger/menubar.ftl
lessecho "    .label = Szerokie wątki"   >> localization/pl/messenger/menubar.ftl
lessecho "    .accesskey = w"            >> localization/pl/messenger/menubar.ftl
lessecho "menu-view-layout-stacked ="    >> localization/pl/messenger/menubar.ftl
lessecho "    .label = Piętrowy"         >> localization/pl/messenger/menubar.ftl
lessecho "    .accesskey = t"            >> localization/pl/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
lessecho "other-action-msg-edit-headers ="         >> localization/pl/messenger/messenger.ftl
lessecho "    .label = Edytuj nagłówki…"           >> localization/pl/messenger/messenger.ftl
lessecho "    .accesskey = N"                      >> localization/pl/messenger/messenger.ftl
lessecho "msg-edit-dialog-title = Edytuj nagłówki" >> localization/pl/messenger/messenger.ftl
lessecho "msg-edit-cancel-button = Anuluj"         >> localization/pl/messenger/messenger.ftl
lessecho "msg-edit-restore-button = Przywróć"      >> localization/pl/messenger/messenger.ftl
lessecho "    .title = Pokaż wartość początkową"   >> localization/pl/messenger/messenger.ftl
lessecho "msg-edit-update-button = Aktualizuj"     >> localization/pl/messenger/messenger.ftl

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
lessecho "quick-filter-bar-negate ="                                                                                                             >> localization/pl/messenger/about3Pane.ftl
lessecho "    .title = Kliknięcie prawym przyciskiem myszy lub naciśnięcie kombinacji klawiszy Ctrl+Enter na przycisku powoduje zanegowanie wyniku." >> localization/pl/messenger/about3Pane.ftl
lessecho "      W przypadku filtra tekstu i etykiet każdy zanegowany przycisk tworzy warunek ORAZ."                                              >> localization/pl/messenger/about3Pane.ftl
lessecho "      Gdy filtr etykiet jest zanegowany, wybranie przycisku etykiet dodaje odpowiednie wiadomości do listy nieoznaczonych wiadomości." >> localization/pl/messenger/about3Pane.ftl
lessecho "      Przykłady:"                                                                                                                      >> localization/pl/messenger/about3Pane.ftl
lessecho "      • Zanegowane [Z gwiazdką] i [Z etykietą]: Pokaż wszystkie wiadomości, które nie są oznaczone gwiazdką ORAZ są bez etykiety."     >> localization/pl/messenger/about3Pane.ftl
lessecho "      • Zanegowany [Temat] i wybrana [Treść]: Pokaż wszystkie wiadomości, w których „Temat” nie zawiera »słowa« ORAZ „Treść” zawiera »słowo«." >> localization/pl/messenger/about3Pane.ftl
lessecho "      • [Dowolna z] z zanegowaną etykietą [Ważne] i wybranymi etykietami [Praca] i [Osobiste]:"                                        >> localization/pl/messenger/about3Pane.ftl
lessecho "      Wyświetla wszystkie wiadomości z etykietą, które nie mają etykiety „Ważne” ORAZ mają etykietę „Praca” LUB „Osobiste”."           >> localization/pl/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
lessecho "mail-context-unthread-message ="             >> localization/pl/messenger/messenger.ftl
lessecho "    .label = Usuń wiadomość z wątku"         >> localization/pl/messenger/messenger.ftl
lessecho "    .accesskey = U"                          >> localization/pl/messenger/messenger.ftl
lessecho "mail-context-reset-message-threading ="      >> localization/pl/messenger/messenger.ftl
lessecho "    .label = Przywróć oryginalne wątkowanie" >> localization/pl/messenger/messenger.ftl
lessecho "    .accesskey = P"                          >> localization/pl/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
lessecho "account-disabled ="           >> localization/pl/messenger/accountSettings.ftl
lessecho "  .label = Konto zablokowane" >> localization/pl/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
lessecho "quick-filter-bar-match-addressbook ="      >> localization/pl/messenger/about3Pane.ftl
lessecho "    .label = Dopasuj z książki adresowej"  >> localization/pl/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Dopasuj na podstawie Wyświetlanej nazwy (zaczyna się od) lub Pseudonimu (dokładne dopasowanie) z twoich książek adresowych" >> localization/pl/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/pl/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/pl/messenger/preferences/preferences.ftl

lessecho "Expires=Expires" >> chrome/pl/locale/pl/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
lessecho "menu-view-layout-horizontal =" >> localization/pl/messenger/menubar.ftl
lessecho "    .label = Poziomy"          >> localization/pl/messenger/menubar.ftl
lessecho "    .accesskey = z"            >> localization/pl/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
lessecho "<!ENTITY storeOnUpdated.label \"Zachowuj zaktualizowane artykuły\">" >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdated.accesskey \"u\">"                           >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdatedInfo.label \"Dla kanałów Atom lub JSON z tagiem &lt;updated&gt;. Jeśli wydawca zmieni wartość, zachowuj artykuł zamiast potraktować go jako duplikat.\">" >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.label \"Przechowuj archiwum strony internetowej razem z artykułem\">" >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
lessecho "run-filters-on-incoming-msgs ="                          >> localization/pl/messenger/folderprops.ftl
lessecho "  .label = Uruchom filtry dla wiadomości przychodzących" >> localization/pl/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
lessecho "carddav-directory-sync-warning =" >> localization/pl/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Niektóre dane zostały usunięte przez serwer, sprawdź Konsolę błędów, aby uzyskać więcej informacji" >> localization/pl/messenger/addressbook/abCardDAVProperties.ftl
lessecho "carddav-directory-sync-failed =" >> localization/pl/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Synchronizacja z serwerem nie powiodła się, sprawdź Konsolę błędów, aby uzyskać więcej informacji" >> localization/pl/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
lessecho "folder-pane-context-reset-sort ="       >> localization/pl/messenger/about3Pane.ftl
lessecho "  .label = Przywróć kolejność folderów" >> localization/pl/messenger/about3Pane.ftl
lessecho "  .accesskey = P"                       >> localization/pl/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
lessecho "search-all-mail-accounts ="                     >> localization/pl/messenger/messenger.ftl
lessecho "  .label = Przeszukaj wszystkie konta pocztowe" >> localization/pl/messenger/messenger.ftl
lessecho "  .accesskey = p"                               >> localization/pl/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
lessecho "gloda.message.attr._subjectMatches.facetNameLabel=Temat" >> chrome/pl/locale/pl/messenger/gloda.properties
lessecho "gloda.message.attr._bodyMatches.facetNameLabel=Treść"    >> chrome/pl/locale/pl/messenger/gloda.properties

# Categories:
lessecho "about-addressbook-details-categories-header = Kategorie" >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-header-categories2 = Kategorie" >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = Sortuj według kategorii"                      >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-label-categories2 ="            >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .label = Kategorie"                                    >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-cell-categories2 ="                    >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .aria-label = Kategorie"                               >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = { \$title }"                                  >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
lessecho "vcard-categories-header = Kategorie"                     >> localization/pl/messenger/addressbook/vcard.ftl
lessecho "vcard-category-add = Dodaj kategorię"                    >> localization/pl/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-label = Kategoria"                  >> localization/pl/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-title = Nazwa kategorii"            >> localization/pl/messenger/addressbook/vcard.ftl
lessecho "Categories=Kategorie" >> chrome/pl/locale/pl/messenger/search-attributes.properties
