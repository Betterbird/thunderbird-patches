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
%lecho% "menuitem-recent-files ="             >> localization\it\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = File recenti…"          >> localization\it\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="     >> localization\it\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Allegare file recenti…" >> localization\it\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Visualizzazione multilinea per tutte le cartelle\">" >> chrome\it\locale\it\messenger\messenger.dtd

:: Original strings:
:: mail-multiline-all-folders =
::     .label = Multi-line View On All Folders
:: mail-multiline-individual-folders =
::     .label = Multi-line View Via Subject Column
:: mail-multiline-no-folders =
::     .label = No Multi-line View
%lecho% "mail-multiline-all-folders ="        >> localization\it\messenger\menubar.ftl
%lecho% "    .label = Visualizzazione multilinea per tutte le cartelle" >> localization\it\messenger\menubar.ftl
%lecho% "mail-multiline-individual-folders =" >> localization\it\messenger\menubar.ftl
%lecho% "    .label = Visualizzazione multilinea mediante la colonna Oggetto" >> localization\it\messenger\menubar.ftl
%lecho% "mail-multiline-no-folders ="         >> localization\it\messenger\menubar.ftl
%lecho% "    .label = Senza visualizzazione multilinea" >> localization\it\messenger\menubar.ftl

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

:: Fix missing ! in the about box.
sed -i -e 's/ENTITY helpus.end.*""/ENTITY helpus.end "!"/' chrome\it\locale\it\messenger\aboutDialog.dtd

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/it/file/a9f0e247fd8dccaadcb09b37e01066da3a7c2e19/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Impossibile aprire il file di spool %S."       >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Impossibile creare il file di lock %S. Per far funzionare movemail è indispensabile creare file di lock nella cartella di spool della posta. In molti sistemi è indispensabile fare in modo che la cartella di spool abbia modalità 01777." >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Impossibile cancellare il file di lock %S."       >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Impossibile troncare il file di spool %S." >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Impossibile individuare il file di spool."     >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Impossibile analizzare il file di spool %S. Il file potrebbe essere corrotto o non valido." >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                       >> chrome\it\locale\it\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="   >> localization\it\messenger\accountManager.ftl
%lecho% "    .label = Aggiungi account Movemail…" >> localization\it\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                      >> localization\it\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="             >> localization\it\messenger\menubar.ftl
%lecho% "    .label = Account Movemail…"          >> localization\it\messenger\menubar.ftl
%lecho% "    .accesskey = M"                      >> localization\it\messenger\menubar.ftl
