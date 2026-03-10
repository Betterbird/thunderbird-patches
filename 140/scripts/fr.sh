# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/fr/locale/fr/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
lessecho "groupButtonTooltipText=Ajouter un nouveau groupe" >> chrome/fr/locale/fr/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
lessecho "<!ENTITY folderContextStartupFolder.label \"Dossier de démarrage\">" >> chrome/fr/locale/fr/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
lessecho "quick-filter-bar-untagged-button ="                       >> localization/fr/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Afficher les messages sans étiquettes" >> localization/fr/messenger/about3Pane.ftl
lessecho "quick-filter-bar-tagged-button ="                         >> localization/fr/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Afficher les messages avec une ou plusieurs étiquettes. Cliquez avec le bouton droit pour effacer la sélection d’étiquette individuelle." >> localization/fr/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
lessecho "enable-gloda-search-encrypted-label =" >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .label = Activer la recherche dans les messages cryptés (stocke une copie décryptée localement)" >> localization/fr/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
lessecho "menuitem-recent-files ="            >> localization/fr/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Fichier(s) récent(s)…" >> localization/fr/messenger/messengercompose/messengercompose.ftl
lessecho "context-menuitem-recent-files ="    >> localization/fr/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Joindre fichier(s) récent(s)…" >> localization/fr/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
lessecho "menu-multi-line-all-folders ="                           >> localization/fr/messenger/menubar.ftl
lessecho "    .label = Affichage multiligne sur tous les dossiers" >> localization/fr/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
lessecho "compose-send-plain-or-html-option =" >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .label = HTML ou texte brut"     >> localization/fr/messenger/preferences/preferences.ftl
lessecho "compose-send-plain-or-html-description = Si aucun style n’est utilisé dans le message, envoyez-le au format texte brut. Sinon, envoyez-le au format HTML." >> localization/fr/messenger/preferences/preferences.ftl

lessecho "compose-send-plain-or-html-menu-item =" >> localization/fr/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = HTML ou texte brut"        >> localization/fr/messenger/messengercompose/messengercompose.ftl
lessecho "    .accesskey = o"                     >> localization/fr/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/fr/file/c44ec9cbb2f169b6456935b250e0a0499ce80927/mail/chrome/messenger/localMsgs.properties
lessecho "movemailCantOpenSpoolFile=Impossible d’ouvrir le fichier de spool du courrier %S."        >> chrome/fr/locale/fr/messenger/localMsgs.properties
lessecho "movemailCantCreateLock=Impossible de créer le fichier verrou %S. Pour que movemail fonctionne, il est nécessaire de créer des fichiers verrous dans le répertoire de spool du courrier. Sur de nombreux systèmes, le meilleur moyen d’y parvenir est d’établir les permissions du répertoire de spool à 01777." >> chrome/fr/locale/fr/messenger/localMsgs.properties
lessecho "movemailCantDeleteLock=Impossible de supprimer le fichier verrou %S."                     >> chrome/fr/locale/fr/messenger/localMsgs.properties
lessecho "movemailCantTruncateSpoolFile=Impossible de tronquer le fichier de spool du courrier %S." >> chrome/fr/locale/fr/messenger/localMsgs.properties
lessecho "movemailSpoolFileNotFound=Impossible de localiser le fichier de spool du courrier."        >> chrome/fr/locale/fr/messenger/localMsgs.properties
lessecho "movemailCantParseSpool=Impossible d’analyser le fichier de spool du courrier %S. Le fichier est peut-être corrompu ou non valide." >> chrome/fr/locale/fr/messenger/localMsgs.properties
lessecho "serverType-movemail=Unix Movemail"                                                         >> chrome/fr/locale/fr/messenger/messenger.properties

lessecho "account-action-add-movemail-account ="       >> localization/fr/messenger/accountManager.ftl
lessecho "    .label = Ajouter un compte de Movemail…" >> localization/fr/messenger/accountManager.ftl
lessecho "    .accesskey = M"                          >> localization/fr/messenger/accountManager.ftl
lessecho "file-new-movemail-account ="                 >> localization/fr/messenger/menubar.ftl
lessecho "    .label = Compte de Movemail…"            >> localization/fr/messenger/menubar.ftl
lessecho "    .accesskey = M"                          >> localization/fr/messenger/menubar.ftl

# Unread/seleted status
lessecho "unreadMsgStatus=Non lus : %S"         >> chrome/fr/locale/fr/messenger/messenger.properties
lessecho "selectedMsgStatus=Sélectionnés : %S"  >> chrome/fr/locale/fr/messenger/messenger.properties
lessecho "totalMsgStatus=Total : %S"            >> chrome/fr/locale/fr/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
lessecho "vertical-tabs-label ="                           >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .label = Afficher la barre d’onglets verticalement" >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .accesskey = v"                              >> localization/fr/messenger/preferences/preferences.ftl
lessecho "attachments-display-top-label ="                 >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .label = Afficher les pièces jointes au-dessus du message" >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .accesskey = u"                              >> localization/fr/messenger/preferences/preferences.ftl

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
lessecho "restore-tabs-session-label ="                      >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .value = Restaurer les onglets au démarrage :" >> localization/fr/messenger/preferences/preferences.ftl
lessecho "restore-all-tabs ="                                >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .label = Tous les onglets"                     >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .accesskey = T"                                >> localization/fr/messenger/preferences/preferences.ftl
lessecho "restore-system-tabs ="                             >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .label = Onglets du système"                   >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .accesskey = s"                                >> localization/fr/messenger/preferences/preferences.ftl
lessecho "restore-no-tabs ="                                 >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .label = Aucun"                                >> localization/fr/messenger/preferences/preferences.ftl
lessecho "    .accesskey = n"                                >> localization/fr/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
lessecho "menu-view-layout-widethread ="        >> localization/fr/messenger/menubar.ftl
lessecho "    .label = Large liste de messages" >> localization/fr/messenger/menubar.ftl
lessecho "    .accesskey = m"                   >> localization/fr/messenger/menubar.ftl
lessecho "menu-view-layout-stacked ="           >> localization/fr/messenger/menubar.ftl
lessecho "    .label = Superposée"              >> localization/fr/messenger/menubar.ftl
lessecho "    .accesskey = S"                   >> localization/fr/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
lessecho "other-action-msg-edit-headers ="           >> localization/fr/messenger/messenger.ftl
lessecho "    .label = Modifier en-têtes…"           >> localization/fr/messenger/messenger.ftl
lessecho "    .accesskey = N"                        >> localization/fr/messenger/messenger.ftl
lessecho "msg-edit-dialog-title = Modifier en-têtes" >> localization/fr/messenger/messenger.ftl
lessecho "msg-edit-cancel-button = Annuler"          >> localization/fr/messenger/messenger.ftl
lessecho "msg-edit-restore-button = Restaurer"       >> localization/fr/messenger/messenger.ftl
lessecho "    .title = Afficher la valeur d’origine" >> localization/fr/messenger/messenger.ftl
lessecho "msg-edit-update-button = Mise à jour"      >> localization/fr/messenger/messenger.ftl

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
lessecho "quick-filter-bar-negate ="                                                                          >> localization/fr/messenger/about3Pane.ftl
lessecho "    .title = Un clic droit ou Ctrl+Entrée sur un bouton inverse le résultat."                       >> localization/fr/messenger/about3Pane.ftl
lessecho "      Pour le filtre de texte et d’étiquettes, tout bouton inversé crée une condition ET."          >> localization/fr/messenger/about3Pane.ftl
lessecho "      Quand le filtre d’étiquettes est inversé, la sélection d’un bouton d’étiquette ajoute les messages respectifs à la liste." >> localization/fr/messenger/about3Pane.ftl
lessecho "      Exemples:"                                                                                    >> localization/fr/messenger/about3Pane.ftl
lessecho "      • [Suivi] et [Étiqueté] inversés : Messages qui ne sont pas ‹ Suivis › ET non ‹ Étiquetés ›." >> localization/fr/messenger/about3Pane.ftl
lessecho "      • [Sujet] inversé et [Corps du message] sélectionné : Messages dont le ‹ Sujet › Ne Contient Pas de « mot » ET ‹ Corps du message › Contient un « mot »." >> localization/fr/messenger/about3Pane.ftl
lessecho "      • [Au moins une], avec [Important] inversé et [Travail] et [Personnel] sélectionnés :"        >> localization/fr/messenger/about3Pane.ftl
lessecho "      Messages étiquetés qui n’ont pas l’étiquette ‹ Important › ET qui ont l’étiquette ‹ Travail › OU l’étiquette ‹ Personnel ›." >> localization/fr/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
lessecho "mail-context-unthread-message ="               >> localization/fr/messenger/messenger.ftl
lessecho "    .label = Enlever message de la discussion" >> localization/fr/messenger/messenger.ftl
lessecho "    .accesskey = l"                            >> localization/fr/messenger/messenger.ftl
lessecho "mail-context-reset-message-threading ="        >> localization/fr/messenger/messenger.ftl
lessecho "    .label = Rétablir discussion originale"    >> localization/fr/messenger/messenger.ftl
lessecho "    .accesskey = R"                            >> localization/fr/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
lessecho "account-disabled ="          >> localization/fr/messenger/accountSettings.ftl
lessecho "  .label = Compte désactivé" >> localization/fr/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
lessecho "quick-filter-bar-match-addressbook ="                                                                                 >> localization/fr/messenger/about3Pane.ftl
lessecho "    .label = Recherche dans le carnet d’adresses"                                                                     >> localization/fr/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Recherche sur le nom à afficher (commence par) ou pseudonyme (exacte) dans les carnets d’adresses" >> localization/fr/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/fr/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/fr/messenger/preferences/preferences.ftl

lessecho "Expires=Expires" >> chrome/fr/locale/fr/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
lessecho "menu-view-layout-horizontal =" >> localization/fr/messenger/menubar.ftl
lessecho "    .label = Horizontal"       >> localization/fr/messenger/menubar.ftl
lessecho "    .accesskey = z"            >> localization/fr/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
lessecho "<!ENTITY storeOnUpdated.label \"Enregistrer les articles mis à jour\">" >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdated.accesskey \"o\">"                               >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdatedInfo.label \"Pour les flux Atom ou JSON contenant la balise &lt;updated&gt;. Si l’éditeur modifie la valeur, l’article est enregistré au lieu d’être traité comme un doublon.\">" >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.label \"Enregistrer une archive de la page Web avec l’article\">" >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
lessecho "run-filters-on-incoming-msgs ="                            >> localization/fr/messenger/folderprops.ftl
lessecho "  .label = Exécuter les filtres sur les messages entrants" >> localization/fr/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
lessecho "carddav-directory-sync-warning =" >> localization/fr/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV : Certaines données ont été ignorées par le serveur, veuillez consulter la console d’erreurs pour plus de détails" >> localization/fr/messenger/addressbook/abCardDAVProperties.ftl
lessecho "carddav-directory-sync-failed =" >> localization/fr/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV : Échec de la synchronisation avec le serveur, veuillez consulter la console d’erreurs pour plus de détails" >> localization/fr/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
lessecho "folder-pane-context-reset-sort ="              >> localization/fr/messenger/about3Pane.ftl
lessecho "  .label = Réinitialiser l’ordre des dossiers" >> localization/fr/messenger/about3Pane.ftl
lessecho "  .accesskey = R"                              >> localization/fr/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
lessecho "search-all-mail-accounts ="                              >> localization/fr/messenger/messenger.ftl
lessecho "  .label = Rechercher dans tous les comptes de courrier" >> localization/fr/messenger/messenger.ftl
lessecho "  .accesskey = c"                                        >> localization/fr/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
lessecho "gloda.message.attr._subjectMatches.facetNameLabel=Sujet"         >> chrome/fr/locale/fr/messenger/gloda.properties
lessecho "gloda.message.attr._bodyMatches.facetNameLabel=Corps du message" >> chrome/fr/locale/fr/messenger/gloda.properties

# Categories:
lessecho "about-addressbook-details-categories-header = Catégories" >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-header-categories2 = Catégories" >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = Trier par catégories"                          >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-label-categories2 ="             >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .label = Catégories"                                    >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-cell-categories2 ="                     >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .aria-label = Catégories"                               >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = { \$title }"                                   >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
lessecho "vcard-categories-header = Catégories"                     >> localization/fr/messenger/addressbook/vcard.ftl
lessecho "vcard-category-add = Ajouter une catégorie"               >> localization/fr/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-label = Catégorie"                   >> localization/fr/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-title = Nom de la catégorie"         >> localization/fr/messenger/addressbook/vcard.ftl
lessecho "Categories=Catégories" >> chrome/fr/locale/fr/messenger/search-attributes.properties
