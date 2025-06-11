:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Aggiungi nuovo gruppo" >> chrome\it\locale\it\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Cartella di avvio\">" >> chrome\it\locale\it\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="                   >> localization\it\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostra i messaggi senza etichetta" >> localization\it\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                     >> localization\it\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostra i messaggi con una o più etichette. Fai clic col tasto destro per cancellare la selezione delle singole etichette." >> localization\it\messenger\about3Pane.ftl

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
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                                 >> localization\it\messenger\menubar.ftl
%lecho% "    .label = Visualizzazione multilinea per tutte le cartelle" >> localization\it\messenger\menubar.ftl

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

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/it/file/a9f0e247fd8dccaadcb09b37e01066da3a7c2e19/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Impossibile aprire il file di spool %%S."       >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Impossibile creare il file di lock %%S. Per far funzionare movemail è indispensabile creare file di lock nella cartella di spool della posta. In molti sistemi è indispensabile fare in modo che la cartella di spool abbia modalità 01777." >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Impossibile cancellare il file di lock %%S."       >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Impossibile troncare il file di spool %%S." >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Impossibile individuare il file di spool."      >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Impossibile analizzare il file di spool %%S. Il file potrebbe essere corrotto o non valido." >> chrome\it\locale\it\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                        >> chrome\it\locale\it\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="   >> localization\it\messenger\accountManager.ftl
%lecho% "    .label = Aggiungi account Movemail…" >> localization\it\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                      >> localization\it\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="             >> localization\it\messenger\menubar.ftl
%lecho% "    .label = Account Movemail…"          >> localization\it\messenger\menubar.ftl
%lecho% "    .accesskey = M"                      >> localization\it\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Non letti: %%S"     >> chrome\it\locale\it\messenger\messenger.properties
%lecho% "selectedMsgStatus=Selezionato: %%S" >> chrome\it\locale\it\messenger\messenger.properties
%lecho% "totalMsgStatus=Totale: %%S"         >> chrome\it\locale\it\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                               >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostra la barra delle schede verticalmente" >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                                  >> localization\it\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                     >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostra gli allegati sopra il messaggio" >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = o"                                  >> localization\it\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                    >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .value = Ripristina le schede all’avvio:"    >> localization\it\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                              >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .label = Tutte le schede"                    >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = T"                              >> localization\it\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                           >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .label = Schede di sistema"                  >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = S"                              >> localization\it\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                               >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .label = Nessuna"                            >> localization\it\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = N"                              >> localization\it\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="         >> localization\it\messenger\menubar.ftl
%lecho% "    .label = Visualizzazione estesa dell’elenco dei messaggi" >> localization\it\messenger\menubar.ftl
%lecho% "    .accesskey = t"                    >> localization\it\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="            >> localization\it\messenger\menubar.ftl
%lecho% "    .label = Visualizzazione impilata" >> localization\it\messenger\menubar.ftl
%lecho% "    .accesskey = i"                    >> localization\it\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="               >> localization\it\messenger\messenger.ftl
%lecho% "    .label = Modifica intestazioni…"           >> localization\it\messenger\messenger.ftl
%lecho% "    .accesskey = N"                            >> localization\it\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Modifica intestazioni" >> localization\it\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Annulla"              >> localization\it\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Ripristina"          >> localization\it\messenger\messenger.ftl
%lecho% "    .title = Mostra il valore originale"       >> localization\it\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Aggiorna"             >> localization\it\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                             >> localization\it\messenger\about3Pane.ftl
%lecho% "    .title = Clic con il tasto destro o Ctrl+Invio su un pulsante inverte il risultato."               >> localization\it\messenger\about3Pane.ftl
%lecho% "      Per il filtro di testo e di etichetta, qualsiasi pulsante negato crea una condizione E (AND)."   >> localization\it\messenger\about3Pane.ftl
%lecho% "      Quando il filtro per le etichette è negato, selezionando un pulsante di etichetta aggiunge i messaggi corrispondenti." >> localization\it\messenger\about3Pane.ftl
%lecho% "      Esempi:"                                                                                         >> localization\it\messenger\about3Pane.ftl
%lecho% "      • [Speciale] e [Etichettato] negati: Messaggi che NON sono ‘Speciali’ E NON sono ‘Etichettati’." >> localization\it\messenger\about3Pane.ftl
%lecho% "      • [Oggetto] negato e [Corpo] selezionato: Messaggi in cui ‘Oggetto’ NON contiene “parola” E ‘Corpo’ contiene “parola”." >> localization\it\messenger\about3Pane.ftl
%lecho% "      • [Qualunque di] con [Importante] negato e [Lavoro] e [Personale] selezionati:"                  >> localization\it\messenger\about3Pane.ftl
%lecho% "      Messaggi etichettati che NON hanno l’etichetta ‘Importante’ E che hanno l’etichetta ‘Lavoro’ O ‘Personale’." >> localization\it\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="                     >> localization\it\messenger\messenger.ftl
%lecho% "    .label = Rimuovi il messaggio dalla discussione" >> localization\it\messenger\messenger.ftl
%lecho% "    .accesskey = m"                                  >> localization\it\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="              >> localization\it\messenger\messenger.ftl
%lecho% "    .label = Ripristina la conversazione originale"  >> localization\it\messenger\messenger.ftl
%lecho% "    .accesskey = R"                                  >> localization\it\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="              >> localization\it\messenger\accountSettings.ftl
%lecho% "  .label = Account disabilitato" >> localization\it\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="                                                                          >> localization\it\messenger\about3Pane.ftl
%lecho% "    .label = Corrisponde in rubrica"                                                                           >> localization\it\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Corrisponde al Nome visualizzato (inizia con) o al Soprannome (esattamente) delle rubriche" >> localization\it\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\it\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\it\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\it\locale\it\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal ="            >> localization\it\messenger\menubar.ftl
%lecho% "    .label = Visualizzazione orizzontale" >> localization\it\messenger\menubar.ftl
%lecho% "    .accesskey = z"                       >> localization\it\messenger\menubar.ftl

:: Original string:
:: <!ENTITY storeOnUpdated.label        "Store &lt;updated&gt; items">
:: <!ENTITY storeOnUpdated.accesskey    "u">
%lecho% "<!ENTITY storeOnUpdated.label \"Store" '&lt;'"updated"'&gt;' "items\">" >> chrome\it\locale\it\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                               >> chrome\it\locale\it\messenger-newsblog\feed-subscriptions.dtd
