# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/it/locale/it/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
lessecho "groupButtonTooltipText=Aggiungi nuovo gruppo" >> chrome/it/locale/it/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
lessecho "<!ENTITY folderContextStartupFolder.label \"Cartella di avvio\">" >> chrome/it/locale/it/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
lessecho "quick-filter-bar-untagged-button ="                   >> localization/it/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Mostra i messaggi senza etichetta" >> localization/it/messenger/about3Pane.ftl
lessecho "quick-filter-bar-tagged-button ="                     >> localization/it/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Mostra i messaggi con una o più etichette. Fai clic col tasto destro per cancellare la selezione delle singole etichette." >> localization/it/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
lessecho "enable-gloda-search-encrypted-label =" >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .label = Attiva la ricerca nei messaggi criptati (salva una copia decriptata in locale)" >> localization/it/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
lessecho "menuitem-recent-files ="             >> localization/it/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = File recenti…"          >> localization/it/messenger/messengercompose/messengercompose.ftl
lessecho "context-menuitem-recent-files ="     >> localization/it/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Allegare file recenti…" >> localization/it/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
lessecho "menu-multi-line-all-folders ="                                 >> localization/it/messenger/menubar.ftl
lessecho "    .label = Visualizzazione multilinea per tutte le cartelle" >> localization/it/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
lessecho "compose-send-plain-or-html-option ="   >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .label = HTML o testo in semplice" >> localization/it/messenger/preferences/preferences.ftl
lessecho "compose-send-plain-or-html-description = Se nel messaggio non vengono utilizzati stili, invia come testo semplice. Altrimenti, invia solo in formato HTML." >> localization/it/messenger/preferences/preferences.ftl

lessecho "compose-send-plain-or-html-menu-item =" >> localization/it/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = HTML o testo semplice"     >> localization/it/messenger/messengercompose/messengercompose.ftl
lessecho "    .accesskey = o"                     >> localization/it/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/it/file/a9f0e247fd8dccaadcb09b37e01066da3a7c2e19/mail/chrome/messenger/localMsgs.properties
lessecho "movemailCantOpenSpoolFile=Impossibile aprire il file di spool %S."       >> chrome/it/locale/it/messenger/localMsgs.properties
lessecho "movemailCantCreateLock=Impossibile creare il file di lock %S. Per far funzionare movemail è indispensabile creare file di lock nella cartella di spool della posta. In molti sistemi è indispensabile fare in modo che la cartella di spool abbia modalità 01777." >> chrome/it/locale/it/messenger/localMsgs.properties
lessecho "movemailCantDeleteLock=Impossibile cancellare il file di lock %S."       >> chrome/it/locale/it/messenger/localMsgs.properties
lessecho "movemailCantTruncateSpoolFile=Impossibile troncare il file di spool %S." >> chrome/it/locale/it/messenger/localMsgs.properties
lessecho "movemailSpoolFileNotFound=Impossibile individuare il file di spool."      >> chrome/it/locale/it/messenger/localMsgs.properties
lessecho "movemailCantParseSpool=Impossibile analizzare il file di spool %S. Il file potrebbe essere corrotto o non valido." >> chrome/it/locale/it/messenger/localMsgs.properties
lessecho "serverType-movemail=Unix Movemail"                                        >> chrome/it/locale/it/messenger/messenger.properties

lessecho "account-action-add-movemail-account ="   >> localization/it/messenger/accountManager.ftl
lessecho "    .label = Aggiungi account Movemail…" >> localization/it/messenger/accountManager.ftl
lessecho "    .accesskey = M"                      >> localization/it/messenger/accountManager.ftl
lessecho "file-new-movemail-account ="             >> localization/it/messenger/menubar.ftl
lessecho "    .label = Account Movemail…"          >> localization/it/messenger/menubar.ftl
lessecho "    .accesskey = M"                      >> localization/it/messenger/menubar.ftl

# Unread/seleted status
lessecho "unreadMsgStatus=Non letti: %S"     >> chrome/it/locale/it/messenger/messenger.properties
lessecho "selectedMsgStatus=Selezionato: %S" >> chrome/it/locale/it/messenger/messenger.properties
lessecho "totalMsgStatus=Totale: %S"         >> chrome/it/locale/it/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
lessecho "vertical-tabs-label ="                               >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .label = Mostra la barra delle schede verticalmente" >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .accesskey = v"                                  >> localization/it/messenger/preferences/preferences.ftl
lessecho "attachments-display-top-label ="                     >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .label = Mostra gli allegati sopra il messaggio" >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .accesskey = o"                                  >> localization/it/messenger/preferences/preferences.ftl

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
lessecho "restore-tabs-session-label ="                    >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .value = Ripristina le schede all’avvio:"    >> localization/it/messenger/preferences/preferences.ftl
lessecho "restore-all-tabs ="                              >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .label = Tutte le schede"                    >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .accesskey = T"                              >> localization/it/messenger/preferences/preferences.ftl
lessecho "restore-system-tabs ="                           >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .label = Schede di sistema"                  >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .accesskey = S"                              >> localization/it/messenger/preferences/preferences.ftl
lessecho "restore-no-tabs ="                               >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .label = Nessuna"                            >> localization/it/messenger/preferences/preferences.ftl
lessecho "    .accesskey = N"                              >> localization/it/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
lessecho "menu-view-layout-widethread ="         >> localization/it/messenger/menubar.ftl
lessecho "    .label = Visualizzazione estesa dell’elenco dei messaggi" >> localization/it/messenger/menubar.ftl
lessecho "    .accesskey = t"                    >> localization/it/messenger/menubar.ftl
lessecho "menu-view-layout-stacked ="            >> localization/it/messenger/menubar.ftl
lessecho "    .label = Visualizzazione impilata" >> localization/it/messenger/menubar.ftl
lessecho "    .accesskey = i"                    >> localization/it/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
lessecho "other-action-msg-edit-headers ="               >> localization/it/messenger/messenger.ftl
lessecho "    .label = Modifica intestazioni…"           >> localization/it/messenger/messenger.ftl
lessecho "    .accesskey = N"                            >> localization/it/messenger/messenger.ftl
lessecho "msg-edit-dialog-title = Modifica intestazioni" >> localization/it/messenger/messenger.ftl
lessecho "msg-edit-cancel-button = Annulla"              >> localization/it/messenger/messenger.ftl
lessecho "msg-edit-restore-button = Ripristina"          >> localization/it/messenger/messenger.ftl
lessecho "    .title = Mostra il valore originale"       >> localization/it/messenger/messenger.ftl
lessecho "msg-edit-update-button = Aggiorna"             >> localization/it/messenger/messenger.ftl

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
lessecho "quick-filter-bar-negate ="                                                                             >> localization/it/messenger/about3Pane.ftl
lessecho "    .title = Clic con il tasto destro o Ctrl+Invio su un pulsante inverte il risultato."               >> localization/it/messenger/about3Pane.ftl
lessecho "      Per il filtro di testo e di etichetta, qualsiasi pulsante negato crea una condizione E (AND)."   >> localization/it/messenger/about3Pane.ftl
lessecho "      Quando il filtro per le etichette è negato, selezionando un pulsante di etichetta aggiunge i messaggi corrispondenti." >> localization/it/messenger/about3Pane.ftl
lessecho "      Esempi:"                                                                                         >> localization/it/messenger/about3Pane.ftl
lessecho "      • [Speciale] e [Etichettato] negati: Messaggi che NON sono ‘Speciali’ E NON sono ‘Etichettati’." >> localization/it/messenger/about3Pane.ftl
lessecho "      • [Oggetto] negato e [Corpo] selezionato: Messaggi in cui ‘Oggetto’ NON contiene “parola” E ‘Corpo’ contiene “parola”." >> localization/it/messenger/about3Pane.ftl
lessecho "      • [Qualunque di] con [Importante] negato e [Lavoro] e [Personale] selezionati:"                  >> localization/it/messenger/about3Pane.ftl
lessecho "      Messaggi etichettati che NON hanno l’etichetta ‘Importante’ E che hanno l’etichetta ‘Lavoro’ O ‘Personale’." >> localization/it/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
lessecho "mail-context-unthread-message ="                     >> localization/it/messenger/messenger.ftl
lessecho "    .label = Rimuovi il messaggio dalla discussione" >> localization/it/messenger/messenger.ftl
lessecho "    .accesskey = m"                                  >> localization/it/messenger/messenger.ftl
lessecho "mail-context-reset-message-threading ="              >> localization/it/messenger/messenger.ftl
lessecho "    .label = Ripristina la conversazione originale"  >> localization/it/messenger/messenger.ftl
lessecho "    .accesskey = R"                                  >> localization/it/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
lessecho "account-disabled ="              >> localization/it/messenger/accountSettings.ftl
lessecho "  .label = Account disabilitato" >> localization/it/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
lessecho "quick-filter-bar-match-addressbook ="                                                                          >> localization/it/messenger/about3Pane.ftl
lessecho "    .label = Corrisponde in rubrica"                                                                           >> localization/it/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Corrisponde al Nome visualizzato (inizia con) o al Soprannome (esattamente) delle rubriche" >> localization/it/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/it/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/it/messenger/preferences/preferences.ftl

lessecho "Expires=Expires" >> chrome/it/locale/it/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
lessecho "menu-view-layout-horizontal ="            >> localization/it/messenger/menubar.ftl
lessecho "    .label = Visualizzazione orizzontale" >> localization/it/messenger/menubar.ftl
lessecho "    .accesskey = z"                       >> localization/it/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
lessecho "<!ENTITY storeOnUpdated.label \"Salva articoli aggiornati\">" >> chrome/it/locale/it/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdated.accesskey \"o\">"                     >> chrome/it/locale/it/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdatedInfo.label \"Per feed Atom o JSON con il tag &lt;updated&gt;. Se il publisher cambia il valore, salva l’articolo invece di considerarlo un duplicato.\">" >> chrome/it/locale/it/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.label \"Salva un archivio della pagina web insieme all’articolo\">" >> chrome/it/locale/it/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/it/locale/it/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
lessecho "run-filters-on-incoming-msgs ="                    >> localization/it/messenger/folderprops.ftl
lessecho "  .label = Esegui i filtri sui messaggi in arrivo" >> localization/it/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
lessecho "carddav-directory-sync-warning =" >> localization/it/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Alcuni dati sono stati eliminati dal server, controlla la Console degli errori per maggiori dettagli" >> localization/it/messenger/addressbook/abCardDAVProperties.ftl
lessecho "carddav-directory-sync-failed =" >> localization/it/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Sincronizzazione con il server non riuscita, controlla la Console degli errori per maggiori dettagli" >> localization/it/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
lessecho "folder-pane-context-reset-sort ="     >> localization/it/messenger/about3Pane.ftl
lessecho "  .label = Reimposta ordine cartelle" >> localization/it/messenger/about3Pane.ftl
lessecho "  .accesskey = R"                     >> localization/it/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
lessecho "search-all-mail-accounts ="                     >> localization/it/messenger/messenger.ftl
lessecho "  .label = Cerca in tutti gli account di posta" >> localization/it/messenger/messenger.ftl
lessecho "  .accesskey = s"                               >> localization/it/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
lessecho "gloda.message.attr._subjectMatches.facetNameLabel=Oggetto" >> chrome/it/locale/it/messenger/gloda.properties
lessecho "gloda.message.attr._bodyMatches.facetNameLabel=Corpo"      >> chrome/it/locale/it/messenger/gloda.properties

# Categories:
lessecho "about-addressbook-details-categories-header = Categorie" >> localization/it/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-header-categories2 = Categorie" >> localization/it/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = Ordina per categorie"                         >> localization/it/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-label-categories2 ="            >> localization/it/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .label = Categorie"                                    >> localization/it/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-cell-categories2 ="                    >> localization/it/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .aria-label = Categorie"                               >> localization/it/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = { \$title }"                                  >> localization/it/messenger/addressbook/aboutAddressBook.ftl
lessecho "vcard-categories-header = Categorie"                     >> localization/it/messenger/addressbook/vcard.ftl
lessecho "vcard-category-add = Aggiungi categoria"                 >> localization/it/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-label = Categoria"                  >> localization/it/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-title = Nome della categoria"       >> localization/it/messenger/addressbook/vcard.ftl
lessecho "Categories=Categorie" >> chrome/it/locale/it/messenger/search-attributes.properties
