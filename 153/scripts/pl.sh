# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/pl/locale/pl/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Dodaj nową grupę" >> chrome/pl/locale/pl/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Folder początkowy\">" >> chrome/pl/locale/pl/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="              >> localization/pl/messenger/about3Pane.ftl
echo "    .tooltiptext = Pokaż wiadomości bez etykiet" >> localization/pl/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                >> localization/pl/messenger/about3Pane.ftl
echo "    .tooltiptext = Pokaż wiadomości posiadające jedną lub więcej etykietę. Kliknij prawym przyciskiem myszy, aby wyczyścić wybór poszczególnych etykiet." >> localization/pl/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/pl/messenger/preferences/preferences.ftl
echo "    .label = Włącz wyszukiwanie w zaszyfrowanych wiadomościach (przechowuje lokalnie odszyfrowaną kopię)" >> localization/pl/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="             >> localization/pl/messenger/messengercompose/messengercompose.ftl
echo "    .label = Ostatnie pliki…"        >> localization/pl/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="     >> localization/pl/messenger/messengercompose/messengercompose.ftl
echo "    .label = Załącz ostatnie pliki…" >> localization/pl/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                            >> localization/pl/messenger/menubar.ftl
echo "    .label = Widok wielu wierszy we wszystkich folderach" >> localization/pl/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option =" >> localization/pl/messenger/preferences/preferences.ftl
echo "    .label = Zwykły tekst lub HTML"  >> localization/pl/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Jeśli wiadomość nie zawiera żadnych stylów, wyślij zwykły tekst. W przeciwnym razie, wyślij tylko HTML." >> localization/pl/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/pl/messenger/messengercompose/messengercompose.ftl
echo "    .label = Zwykły tekst lub HTML"     >> localization/pl/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = O"                     >> localization/pl/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/pl/file/619e43c2d9f9374c770f964c810182d978b5d74e/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Otworzenie pliku poczty %S było niemożliwe."    >> chrome/pl/locale/pl/messenger/localMsgs.properties
echo "movemailCantCreateLock=Utworzenie pliku blokującego %S było niemożliwe. Dostęp do poczty Movemail wymaga możliwości tworzenia plików blokujących w systemowym katalogu poczty. W przypadku większości systemów wystarczy ustawić prawa dostępu do systemowego katalogu poczty na 01777." >> chrome/pl/locale/pl/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Usunięcie pliku blokującego %S było niemożliwe."   >> chrome/pl/locale/pl/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Skrócenie pliku poczty %S było niemożliwe." >> chrome/pl/locale/pl/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Odnalezienie pliku poczty było niemożliwe."      >> chrome/pl/locale/pl/messenger/localMsgs.properties
echo "movemailCantParseSpool=Wystąpił błąd podczas wczytywania pliku %S. Plik poczty może być uszkodzony lub nieprawidłowy." >> chrome/pl/locale/pl/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                         >> chrome/pl/locale/pl/messenger/messenger.properties

echo "account-action-add-movemail-account =" >> localization/pl/messenger/accountManager.ftl
echo "    .label = Dodaj konto Movemail…"    >> localization/pl/messenger/accountManager.ftl
echo "    .accesskey = M"                    >> localization/pl/messenger/accountManager.ftl
echo "file-new-movemail-account ="           >> localization/pl/messenger/menubar.ftl
echo "    .label = Konto Movemail…"          >> localization/pl/messenger/menubar.ftl
echo "    .accesskey = M"                    >> localization/pl/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Nieprzeczytane: %S" >> chrome/pl/locale/pl/messenger/messenger.properties
echo "selectedMsgStatus=Zaznaczone: %S"   >> chrome/pl/locale/pl/messenger/messenger.properties
echo "totalMsgStatus=Razem: %S"           >> chrome/pl/locale/pl/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                       >> localization/pl/messenger/preferences/preferences.ftl
echo "    .label = Wyświetlaj pasek kart w pionie" >> localization/pl/messenger/preferences/preferences.ftl
echo "    .accesskey = p"                          >> localization/pl/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="             >> localization/pl/messenger/preferences/preferences.ftl
echo "    .label = Wyświetlaj listę załączników nad wiadomością" >> localization/pl/messenger/preferences/preferences.ftl
echo "    .accesskey = n"                          >> localization/pl/messenger/preferences/preferences.ftl

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
echo "restore-tabs-session-label ="                      >> localization/pl/messenger/preferences/preferences.ftl
echo "    .value = Przywróć karty podczas uruchamiania:" >> localization/pl/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                                >> localization/pl/messenger/preferences/preferences.ftl
echo "    .label = Wszystkie"                            >> localization/pl/messenger/preferences/preferences.ftl
echo "    .accesskey = W"                                >> localization/pl/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                             >> localization/pl/messenger/preferences/preferences.ftl
echo "    .label = Systemowe"                            >> localization/pl/messenger/preferences/preferences.ftl
echo "    .accesskey = S"                                >> localization/pl/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                                 >> localization/pl/messenger/preferences/preferences.ftl
echo "    .label = Żadne"                                >> localization/pl/messenger/preferences/preferences.ftl
echo "    .accesskey = Ż"                                >> localization/pl/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread =" >> localization/pl/messenger/menubar.ftl
echo "    .label = Szerokie wątki"   >> localization/pl/messenger/menubar.ftl
echo "    .accesskey = w"            >> localization/pl/messenger/menubar.ftl
echo "menu-view-layout-stacked ="    >> localization/pl/messenger/menubar.ftl
echo "    .label = Piętrowy"         >> localization/pl/messenger/menubar.ftl
echo "    .accesskey = t"            >> localization/pl/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="         >> localization/pl/messenger/messenger.ftl
echo "    .label = Edytuj nagłówki…"           >> localization/pl/messenger/messenger.ftl
echo "    .accesskey = N"                      >> localization/pl/messenger/messenger.ftl
echo "msg-edit-dialog-title = Edytuj nagłówki" >> localization/pl/messenger/messenger.ftl
echo "msg-edit-cancel-button = Anuluj"         >> localization/pl/messenger/messenger.ftl
echo "msg-edit-restore-button = Przywróć"      >> localization/pl/messenger/messenger.ftl
echo "    .title = Pokaż wartość początkową"   >> localization/pl/messenger/messenger.ftl
echo "msg-edit-update-button = Aktualizuj"     >> localization/pl/messenger/messenger.ftl

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
echo "quick-filter-bar-negate ="                                                                                                             >> localization/pl/messenger/about3Pane.ftl
echo "    .title = Kliknięcie prawym przyciskiem myszy lub naciśnięcie kombinacji klawiszy Ctrl+Enter na przycisku powoduje zanegowanie wyniku." >> localization/pl/messenger/about3Pane.ftl
echo "      W przypadku filtra tekstu i etykiet każdy zanegowany przycisk tworzy warunek ORAZ."                                              >> localization/pl/messenger/about3Pane.ftl
echo "      Gdy filtr etykiet jest zanegowany, wybranie przycisku etykiet dodaje odpowiednie wiadomości do listy nieoznaczonych wiadomości." >> localization/pl/messenger/about3Pane.ftl
echo "      Przykłady:"                                                                                                                      >> localization/pl/messenger/about3Pane.ftl
echo "      • Zanegowane [Z gwiazdką] i [Z etykietą]: Pokaż wszystkie wiadomości, które nie są oznaczone gwiazdką ORAZ są bez etykiety."     >> localization/pl/messenger/about3Pane.ftl
echo "      • Zanegowany [Temat] i wybrana [Treść]: Pokaż wszystkie wiadomości, w których „Temat” nie zawiera »słowa« ORAZ „Treść” zawiera »słowo«." >> localization/pl/messenger/about3Pane.ftl
echo "      • [Dowolna z] z zanegowaną etykietą [Ważne] i wybranymi etykietami [Praca] i [Osobiste]:"                                        >> localization/pl/messenger/about3Pane.ftl
echo "      Wyświetla wszystkie wiadomości z etykietą, które nie mają etykiety „Ważne” ORAZ mają etykietę „Praca” LUB „Osobiste”."           >> localization/pl/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="             >> localization/pl/messenger/messenger.ftl
echo "    .label = Usuń wiadomość z wątku"         >> localization/pl/messenger/messenger.ftl
echo "    .accesskey = U"                          >> localization/pl/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="      >> localization/pl/messenger/messenger.ftl
echo "    .label = Przywróć oryginalne wątkowanie" >> localization/pl/messenger/messenger.ftl
echo "    .accesskey = P"                          >> localization/pl/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="           >> localization/pl/messenger/accountSettings.ftl
echo "  .label = Konto zablokowane" >> localization/pl/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="      >> localization/pl/messenger/about3Pane.ftl
echo "    .label = Dopasuj z książki adresowej"  >> localization/pl/messenger/about3Pane.ftl
echo "    .tooltiptext = Dopasuj na podstawie Wyświetlanej nazwy (zaczyna się od) lub Pseudonimu (dokładne dopasowanie) z twoich książek adresowych" >> localization/pl/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/pl/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/pl/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/pl/locale/pl/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal =" >> localization/pl/messenger/menubar.ftl
echo "    .label = Poziomy"          >> localization/pl/messenger/menubar.ftl
echo "    .accesskey = z"            >> localization/pl/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Zachowuj zaktualizowane artykuły\">" >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"                           >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"Dla kanałów Atom lub JSON z tagiem &lt;updated&gt;. Jeśli wydawca zmieni wartość, zachowuj artykuł zamiast potraktować go jako duplikat.\">" >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Przechowuj archiwum strony internetowej razem z artykułem\">" >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/pl/locale/pl/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                          >> localization/pl/messenger/folderprops.ftl
echo "  .label = Uruchom filtry dla wiadomości przychodzących" >> localization/pl/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/pl/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Niektóre dane zostały usunięte przez serwer, sprawdź Konsolę błędów, aby uzyskać więcej informacji" >> localization/pl/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/pl/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Synchronizacja z serwerem nie powiodła się, sprawdź Konsolę błędów, aby uzyskać więcej informacji" >> localization/pl/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort ="       >> localization/pl/messenger/about3Pane.ftl
echo "  .label = Przywróć kolejność folderów" >> localization/pl/messenger/about3Pane.ftl
echo "  .accesskey = P"                       >> localization/pl/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts ="                     >> localization/pl/messenger/messenger.ftl
echo "  .label = Przeszukaj wszystkie konta pocztowe" >> localization/pl/messenger/messenger.ftl
echo "  .accesskey = p"                               >> localization/pl/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=Temat" >> chrome/pl/locale/pl/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Treść"    >> chrome/pl/locale/pl/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = Kategorie" >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Kategorie" >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Sortuj według kategorii"                      >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="            >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Kategorie"                                    >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                    >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Kategorie"                               >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                  >> localization/pl/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Kategorie"                     >> localization/pl/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Dodaj kategorię"                    >> localization/pl/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Kategoria"                  >> localization/pl/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Nazwa kategorii"            >> localization/pl/messenger/addressbook/vcard.ftl
echo "Categories=Kategorie" >> chrome/pl/locale/pl/messenger/search-attributes.properties
