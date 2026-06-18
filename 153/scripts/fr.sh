# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/fr/locale/fr/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Ajouter un nouveau groupe" >> chrome/fr/locale/fr/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Dossier de démarrage\">" >> chrome/fr/locale/fr/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="                       >> localization/fr/messenger/about3Pane.ftl
echo "    .tooltiptext = Afficher les messages sans étiquettes" >> localization/fr/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                         >> localization/fr/messenger/about3Pane.ftl
echo "    .tooltiptext = Afficher les messages avec une ou plusieurs étiquettes. Cliquez avec le bouton droit pour effacer la sélection d’étiquette individuelle." >> localization/fr/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/fr/messenger/preferences/preferences.ftl
echo "    .label = Activer la recherche dans les messages cryptés (stocke une copie décryptée localement)" >> localization/fr/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="            >> localization/fr/messenger/messengercompose/messengercompose.ftl
echo "    .label = Fichier(s) récent(s)…" >> localization/fr/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="    >> localization/fr/messenger/messengercompose/messengercompose.ftl
echo "    .label = Joindre fichier(s) récent(s)…" >> localization/fr/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                           >> localization/fr/messenger/menubar.ftl
echo "    .label = Affichage multiligne sur tous les dossiers" >> localization/fr/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option =" >> localization/fr/messenger/preferences/preferences.ftl
echo "    .label = HTML ou texte brut"     >> localization/fr/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Si aucun style n’est utilisé dans le message, envoyez-le au format texte brut. Sinon, envoyez-le au format HTML." >> localization/fr/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/fr/messenger/messengercompose/messengercompose.ftl
echo "    .label = HTML ou texte brut"        >> localization/fr/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = o"                     >> localization/fr/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/fr/file/c44ec9cbb2f169b6456935b250e0a0499ce80927/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Impossible d’ouvrir le fichier de spool du courrier %S."        >> chrome/fr/locale/fr/messenger/localMsgs.properties
echo "movemailCantCreateLock=Impossible de créer le fichier verrou %S. Pour que movemail fonctionne, il est nécessaire de créer des fichiers verrous dans le répertoire de spool du courrier. Sur de nombreux systèmes, le meilleur moyen d’y parvenir est d’établir les permissions du répertoire de spool à 01777." >> chrome/fr/locale/fr/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Impossible de supprimer le fichier verrou %S."                     >> chrome/fr/locale/fr/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Impossible de tronquer le fichier de spool du courrier %S." >> chrome/fr/locale/fr/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Impossible de localiser le fichier de spool du courrier."        >> chrome/fr/locale/fr/messenger/localMsgs.properties
echo "movemailCantParseSpool=Impossible d’analyser le fichier de spool du courrier %S. Le fichier est peut-être corrompu ou non valide." >> chrome/fr/locale/fr/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                                         >> chrome/fr/locale/fr/messenger/messenger.properties

echo "account-action-add-movemail-account ="       >> localization/fr/messenger/accountManager.ftl
echo "    .label = Ajouter un compte de Movemail…" >> localization/fr/messenger/accountManager.ftl
echo "    .accesskey = M"                          >> localization/fr/messenger/accountManager.ftl
echo "file-new-movemail-account ="                 >> localization/fr/messenger/menubar.ftl
echo "    .label = Compte de Movemail…"            >> localization/fr/messenger/menubar.ftl
echo "    .accesskey = M"                          >> localization/fr/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Non lus : %S"         >> chrome/fr/locale/fr/messenger/messenger.properties
echo "selectedMsgStatus=Sélectionnés : %S"  >> chrome/fr/locale/fr/messenger/messenger.properties
echo "totalMsgStatus=Total : %S"            >> chrome/fr/locale/fr/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                           >> localization/fr/messenger/preferences/preferences.ftl
echo "    .label = Afficher la barre d’onglets verticalement" >> localization/fr/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                              >> localization/fr/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="                 >> localization/fr/messenger/preferences/preferences.ftl
echo "    .label = Afficher les pièces jointes au-dessus du message" >> localization/fr/messenger/preferences/preferences.ftl
echo "    .accesskey = u"                              >> localization/fr/messenger/preferences/preferences.ftl

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
echo "restore-tabs-session-label ="                      >> localization/fr/messenger/preferences/preferences.ftl
echo "    .value = Restaurer les onglets au démarrage :" >> localization/fr/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                                >> localization/fr/messenger/preferences/preferences.ftl
echo "    .label = Tous les onglets"                     >> localization/fr/messenger/preferences/preferences.ftl
echo "    .accesskey = T"                                >> localization/fr/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                             >> localization/fr/messenger/preferences/preferences.ftl
echo "    .label = Onglets du système"                   >> localization/fr/messenger/preferences/preferences.ftl
echo "    .accesskey = s"                                >> localization/fr/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                                 >> localization/fr/messenger/preferences/preferences.ftl
echo "    .label = Aucun"                                >> localization/fr/messenger/preferences/preferences.ftl
echo "    .accesskey = n"                                >> localization/fr/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread ="        >> localization/fr/messenger/menubar.ftl
echo "    .label = Large liste de messages" >> localization/fr/messenger/menubar.ftl
echo "    .accesskey = m"                   >> localization/fr/messenger/menubar.ftl
echo "menu-view-layout-stacked ="           >> localization/fr/messenger/menubar.ftl
echo "    .label = Superposée"              >> localization/fr/messenger/menubar.ftl
echo "    .accesskey = S"                   >> localization/fr/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="           >> localization/fr/messenger/messenger.ftl
echo "    .label = Modifier en-têtes…"           >> localization/fr/messenger/messenger.ftl
echo "    .accesskey = N"                        >> localization/fr/messenger/messenger.ftl
echo "msg-edit-dialog-title = Modifier en-têtes" >> localization/fr/messenger/messenger.ftl
echo "msg-edit-cancel-button = Annuler"          >> localization/fr/messenger/messenger.ftl
echo "msg-edit-restore-button = Restaurer"       >> localization/fr/messenger/messenger.ftl
echo "    .title = Afficher la valeur d’origine" >> localization/fr/messenger/messenger.ftl
echo "msg-edit-update-button = Mise à jour"      >> localization/fr/messenger/messenger.ftl

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
echo "quick-filter-bar-negate ="                                                                          >> localization/fr/messenger/about3Pane.ftl
echo "    .title = Un clic droit ou Ctrl+Entrée sur un bouton inverse le résultat."                       >> localization/fr/messenger/about3Pane.ftl
echo "      Pour le filtre de texte et d’étiquettes, tout bouton inversé crée une condition ET."          >> localization/fr/messenger/about3Pane.ftl
echo "      Quand le filtre d’étiquettes est inversé, la sélection d’un bouton d’étiquette ajoute les messages respectifs à la liste." >> localization/fr/messenger/about3Pane.ftl
echo "      Exemples:"                                                                                    >> localization/fr/messenger/about3Pane.ftl
echo "      • [Suivi] et [Étiqueté] inversés : Messages qui ne sont pas ‹ Suivis › ET non ‹ Étiquetés ›." >> localization/fr/messenger/about3Pane.ftl
echo "      • [Sujet] inversé et [Corps du message] sélectionné : Messages dont le ‹ Sujet › Ne Contient Pas de « mot » ET ‹ Corps du message › Contient un « mot »." >> localization/fr/messenger/about3Pane.ftl
echo "      • [Au moins une], avec [Important] inversé et [Travail] et [Personnel] sélectionnés :"        >> localization/fr/messenger/about3Pane.ftl
echo "      Messages étiquetés qui n’ont pas l’étiquette ‹ Important › ET qui ont l’étiquette ‹ Travail › OU l’étiquette ‹ Personnel ›." >> localization/fr/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="               >> localization/fr/messenger/messenger.ftl
echo "    .label = Enlever message de la discussion" >> localization/fr/messenger/messenger.ftl
echo "    .accesskey = l"                            >> localization/fr/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="        >> localization/fr/messenger/messenger.ftl
echo "    .label = Rétablir discussion originale"    >> localization/fr/messenger/messenger.ftl
echo "    .accesskey = R"                            >> localization/fr/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="          >> localization/fr/messenger/accountSettings.ftl
echo "  .label = Compte désactivé" >> localization/fr/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="                                                                                 >> localization/fr/messenger/about3Pane.ftl
echo "    .label = Recherche dans le carnet d’adresses"                                                                     >> localization/fr/messenger/about3Pane.ftl
echo "    .tooltiptext = Recherche sur le nom à afficher (commence par) ou pseudonyme (exacte) dans les carnets d’adresses" >> localization/fr/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/fr/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/fr/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/fr/locale/fr/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal =" >> localization/fr/messenger/menubar.ftl
echo "    .label = Horizontal"       >> localization/fr/messenger/menubar.ftl
echo "    .accesskey = z"            >> localization/fr/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Enregistrer les articles mis à jour\">" >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"o\">"                               >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"Pour les flux Atom ou JSON contenant la balise &lt;updated&gt;. Si l’éditeur modifie la valeur, l’article est enregistré au lieu d’être traité comme un doublon.\">" >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Enregistrer une archive de la page Web avec l’article\">" >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/fr/locale/fr/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                            >> localization/fr/messenger/folderprops.ftl
echo "  .label = Exécuter les filtres sur les messages entrants" >> localization/fr/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/fr/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV : Certaines données ont été ignorées par le serveur, veuillez consulter la console d’erreurs pour plus de détails" >> localization/fr/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/fr/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV : Échec de la synchronisation avec le serveur, veuillez consulter la console d’erreurs pour plus de détails" >> localization/fr/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort ="              >> localization/fr/messenger/about3Pane.ftl
echo "  .label = Réinitialiser l’ordre des dossiers" >> localization/fr/messenger/about3Pane.ftl
echo "  .accesskey = R"                              >> localization/fr/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts ="                              >> localization/fr/messenger/messenger.ftl
echo "  .label = Rechercher dans tous les comptes de courrier" >> localization/fr/messenger/messenger.ftl
echo "  .accesskey = c"                                        >> localization/fr/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=Sujet"         >> chrome/fr/locale/fr/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Corps du message" >> chrome/fr/locale/fr/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = Catégories" >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Catégories" >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Trier par catégories"                          >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="             >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Catégories"                                    >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                     >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Catégories"                               >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                   >> localization/fr/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Catégories"                     >> localization/fr/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Ajouter une catégorie"               >> localization/fr/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Catégorie"                   >> localization/fr/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Nom de la catégorie"         >> localization/fr/messenger/addressbook/vcard.ftl
echo "Categories=Catégories" >> chrome/fr/locale/fr/messenger/search-attributes.properties
