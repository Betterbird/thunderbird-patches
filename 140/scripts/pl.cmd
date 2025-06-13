:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Dodaj nową grupę" >> chrome\pl\locale\pl\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Folder początkowy\">" >> chrome\pl\locale\pl\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="              >> localization\pl\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Pokaż wiadomości bez etykiet" >> localization\pl\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                >> localization\pl\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Pokaż wiadomości posiadające jedną lub więcej etykietę. Kliknij prawym przyciskiem myszy, aby wyczyścić wybór poszczególnych etykiet." >> localization\pl\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .label = Włącz wyszukiwanie w zaszyfrowanych wiadomościach (przechowuje lokalnie odszyfrowaną kopię)" >> localization\pl\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="             >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Ostatnie pliki…"        >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="     >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Załącz ostatnie pliki…" >> localization\pl\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                            >> localization\pl\messenger\menubar.ftl
%lecho% "    .label = Widok wielu wierszy we wszystkich folderach" >> localization\pl\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .label = Zwykły tekst lub HTML"  >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Jeśli wiadomość nie zawiera żadnych stylów, wyślij zwykły tekst. W przeciwnym razie, wyślij tylko HTML." >> localization\pl\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Zwykły tekst lub HTML"     >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\pl\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/pl/file/619e43c2d9f9374c770f964c810182d978b5d74e/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Otworzenie pliku poczty %%S było niemożliwe."    >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Utworzenie pliku blokującego %%S było niemożliwe. Dostęp do poczty Movemail wymaga możliwości tworzenia plików blokujących w systemowym katalogu poczty. W przypadku większości systemów wystarczy ustawić prawa dostępu do systemowego katalogu poczty na 01777." >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Usunięcie pliku blokującego %%S było niemożliwe."   >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Skrócenie pliku poczty %%S było niemożliwe." >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Odnalezienie pliku poczty było niemożliwe."      >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Wystąpił błąd podczas wczytywania pliku %%S. Plik poczty może być uszkodzony lub nieprawidłowy." >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                         >> chrome\pl\locale\pl\messenger\messenger.properties

%lecho% "account-action-add-movemail-account =" >> localization\pl\messenger\accountManager.ftl
%lecho% "    .label = Dodaj konto Movemail…"    >> localization\pl\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                    >> localization\pl\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="           >> localization\pl\messenger\menubar.ftl
%lecho% "    .label = Konto Movemail…"          >> localization\pl\messenger\menubar.ftl
%lecho% "    .accesskey = M"                    >> localization\pl\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Nieprzeczytane: %%S" >> chrome\pl\locale\pl\messenger\messenger.properties
%lecho% "selectedMsgStatus=Zaznaczone: %%S"   >> chrome\pl\locale\pl\messenger\messenger.properties
%lecho% "totalMsgStatus=Razem: %%S"           >> chrome\pl\locale\pl\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                       >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .label = Wyświetlaj pasek kart w pionie" >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"                          >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="             >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .label = Wyświetlaj listę załączników nad wiadomością" >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = n"                          >> localization\pl\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                      >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .value = Przywróć karty podczas uruchamiania:" >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                                >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .label = Wszystkie"                            >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = W"                                >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                             >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .label = Systemowe"                            >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = S"                                >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                                 >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .label = Żadne"                                >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = Ż"                                >> localization\pl\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread =" >> localization\pl\messenger\menubar.ftl
%lecho% "    .label = Szerokie wątki"   >> localization\pl\messenger\menubar.ftl
%lecho% "    .accesskey = w"            >> localization\pl\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="    >> localization\pl\messenger\menubar.ftl
%lecho% "    .label = Piętrowy"         >> localization\pl\messenger\menubar.ftl
%lecho% "    .accesskey = t"            >> localization\pl\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="         >> localization\pl\messenger\messenger.ftl
%lecho% "    .label = Edytuj nagłówki…"           >> localization\pl\messenger\messenger.ftl
%lecho% "    .accesskey = N"                      >> localization\pl\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Edytuj nagłówki" >> localization\pl\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Anuluj"         >> localization\pl\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Przywróć"      >> localization\pl\messenger\messenger.ftl
%lecho% "    .title = Pokaż wartość początkową"   >> localization\pl\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Aktualizuj"     >> localization\pl\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                                                             >> localization\pl\messenger\about3Pane.ftl
%lecho% "    .title = Kliknięcie prawym przyciskiem myszy lub naciśnięcie kombinacji klawiszy Ctrl+Enter na przycisku powoduje zanegowanie wyniku." >> localization\pl\messenger\about3Pane.ftl
%lecho% "      W przypadku filtra tekstu i etykiet każdy zanegowany przycisk tworzy warunek ORAZ."                                              >> localization\pl\messenger\about3Pane.ftl
%lecho% "      Gdy filtr etykiet jest zanegowany, wybranie przycisku etykiet dodaje odpowiednie wiadomości do listy nieoznaczonych wiadomości." >> localization\pl\messenger\about3Pane.ftl
%lecho% "      Przykłady:"                                                                                                                      >> localization\pl\messenger\about3Pane.ftl
%lecho% "      • Zanegowane [Z gwiazdką] i [Z etykietą]: Pokaż wszystkie wiadomości, które nie są oznaczone gwiazdką ORAZ są bez etykiety."     >> localization\pl\messenger\about3Pane.ftl
%lecho% "      • Zanegowany [Temat] i wybrana [Treść]: Pokaż wszystkie wiadomości, w których „Temat” nie zawiera »słowa« ORAZ „Treść” zawiera »słowo«." >> localization\pl\messenger\about3Pane.ftl
%lecho% "      • [Dowolna z] z zanegowaną etykietą [Ważne] i wybranymi etykietami [Praca] i [Osobiste]:"                                        >> localization\pl\messenger\about3Pane.ftl
%lecho% "      Wyświetla wszystkie wiadomości z etykietą, które nie mają etykiety „Ważne” ORAZ mają etykietę „Praca” LUB „Osobiste”."           >> localization\pl\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="             >> localization\pl\messenger\messenger.ftl
%lecho% "    .label = Usuń wiadomość z wątku"         >> localization\pl\messenger\messenger.ftl
%lecho% "    .accesskey = U"                          >> localization\pl\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="      >> localization\pl\messenger\messenger.ftl
%lecho% "    .label = Przywróć oryginalne wątkowanie" >> localization\pl\messenger\messenger.ftl
%lecho% "    .accesskey = P"                          >> localization\pl\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="           >> localization\pl\messenger\accountSettings.ftl
%lecho% "  .label = Konto zablokowane" >> localization\pl\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="      >> localization\pl\messenger\about3Pane.ftl
%lecho% "    .label = Dopasuj z książki adresowej"  >> localization\pl\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Dopasuj na podstawie Wyświetlanej nazwy (zaczyna się od) lub Pseudonimu (dokładne dopasowanie) z twoich książek adresowych" >> localization\pl\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\pl\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\pl\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\pl\locale\pl\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal =" >> localization\pl\messenger\menubar.ftl
%lecho% "    .label = Poziomy"          >> localization\pl\messenger\menubar.ftl
%lecho% "    .accesskey = z"            >> localization\pl\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"Zapisuj zaktualizowane artykuły\">" >> chrome\pl\locale\pl\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                           >> chrome\pl\locale\pl\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"Dla kanałów Atom lub JSON z tagiem "'&lt;updated&gt;'". Jeśli wydawca zmieni wartość, artykuł zostanie zapisany zamiast potraktowania go jako duplikat.\">" >> chrome\pl\locale\pl\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Zapisz archiwum strony internetowej razem z artykułem\">" >> chrome\pl\locale\pl\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\pl\locale\pl\messenger-newsblog\feed-subscriptions.dtd
