:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Ajouter un nouveau groupe" >> chrome\fr\locale\fr\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Dossier de démarrage\">" >> chrome\fr\locale\fr\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="                       >> localization\fr\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Afficher les messages sans étiquettes" >> localization\fr\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                         >> localization\fr\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Afficher les messages avec une ou plusieurs étiquettes. Cliquez avec le bouton droit pour effacer la sélection d’étiquette individuelle." >> localization\fr\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .label = Activer la recherche dans les messages cryptés (stocke une copie décryptée localement)" >> localization\fr\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="            >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Fichier(s) récent(s)…" >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="    >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Joindre fichier(s) récent(s)…" >> localization\fr\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                           >> localization\fr\messenger\menubar.ftl
%lecho% "    .label = Affichage multiligne sur tous les dossiers" >> localization\fr\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .label = HTML ou texte brut"     >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Si aucun style n’est utilisé dans le message, envoyez-le au format texte brut. Sinon, envoyez-le au format HTML." >> localization\fr\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = HTML ou texte brut"        >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = o"                     >> localization\fr\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/fr/file/c44ec9cbb2f169b6456935b250e0a0499ce80927/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Impossible d’ouvrir le fichier de spool du courrier %%S."        >> chrome\fr\locale\fr\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Impossible de créer le fichier verrou %%S. Pour que movemail fonctionne, il est nécessaire de créer des fichiers verrous dans le répertoire de spool du courrier. Sur de nombreux systèmes, le meilleur moyen d’y parvenir est d’établir les permissions du répertoire de spool à 01777." >> chrome\fr\locale\fr\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Impossible de supprimer le fichier verrou %%S."                     >> chrome\fr\locale\fr\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Impossible de tronquer le fichier de spool du courrier %%S." >> chrome\fr\locale\fr\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Impossible de localiser le fichier de spool du courrier."        >> chrome\fr\locale\fr\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Impossible d’analyser le fichier de spool du courrier %%S. Le fichier est peut-être corrompu ou non valide." >> chrome\fr\locale\fr\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                                         >> chrome\fr\locale\fr\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="       >> localization\fr\messenger\accountManager.ftl
%lecho% "    .label = Ajouter un compte de Movemail…" >> localization\fr\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                          >> localization\fr\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="                 >> localization\fr\messenger\menubar.ftl
%lecho% "    .label = Compte de Movemail…"            >> localization\fr\messenger\menubar.ftl
%lecho% "    .accesskey = M"                          >> localization\fr\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Non lus : %%S"         >> chrome\fr\locale\fr\messenger\messenger.properties
%lecho% "selectedMsgStatus=Sélectionnés : %%S"  >> chrome\fr\locale\fr\messenger\messenger.properties
%lecho% "totalMsgStatus=Total : %%S"            >> chrome\fr\locale\fr\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                           >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .label = Afficher la barre d'onglets verticalement" >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                              >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                 >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .label = Afficher les pièces jointes au-dessus du message" >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = u"                              >> localization\fr\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                      >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .value = Restaurer les onglets au démarrage :" >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                                >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .label = Tous les onglets"                     >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = T"                                >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                             >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .label = Onglets du système"                   >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                                >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                                 >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .label = Aucun"                                >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = n"                                >> localization\fr\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="        >> localization\fr\messenger\menubar.ftl
%lecho% "    .label = Liste large de messages" >> localization\fr\messenger\menubar.ftl
%lecho% "    .accesskey = l"                   >> localization\fr\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="           >> localization\fr\messenger\menubar.ftl
%lecho% "    .label = Empilée"                 >> localization\fr\messenger\menubar.ftl
%lecho% "    .accesskey = E"                   >> localization\fr\messenger\menubar.ftl
