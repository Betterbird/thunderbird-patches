:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Aggiungi nuovo gruppo" >> chrome\it\locale\it\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Cartella di avvio\">" >> chrome\it\locale\it\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Mostra i messaggi senza etichetta\">" >> chrome\it\locale\it\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Mostra i messaggi con una o più etichette. Fai clic col tasto destro per cancellare la selezione delle singole etichette.\">" >> chrome\it\locale\it\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .label = Attiva la ricerca nei messaggi criptati (memorizza una copia decriptata in locale)" >> localization\it\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="               >> localization\it\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = File recenti…"          >> localization\it\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="       >> localization\it\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Allegare file recenti…" >> localization\it\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Visualizzazione multilinea per tutte le cartelle\">" >> chrome\it\locale\it\messenger\messenger.dtd

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option ="   >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .label = HTML o testo in semplice" >> localization\it\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Se nel messaggio non vengono utilizzati stili, invia come testo semplice. Altrimenti, invia solo in formato HTML." >> localization\it\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\it\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = HTML o testo semplice"     >> localization\it\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = o"                     >> localization\it\messenger\messengercompose\messengercompose.ftl
