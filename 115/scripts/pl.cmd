:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
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

:: New string from bug 1823274. The Thunderbird folks where negligent and didn't refresh l10n so it's missing everywhere :-(
%lecho% "context-menu-cancel-msg ="      > localization\pt\messenger\messenger.ftl
%lecho% "    .label = Wycofaj wiadomość" > localization\pt\messenger\messenger.ftl
