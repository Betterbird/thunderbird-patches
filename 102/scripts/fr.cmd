:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Ajouter un nouveau groupe" >> chrome\fr\locale\fr\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Dossier de démarrage\">" >> chrome\fr\locale\fr\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Afficher les messages sans étiquettes\">" >> chrome\fr\locale\fr\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Afficher les messages avec une ou plusieurs étiquettes. Cliquez avec le bouton droit pour effacer la sélection d’étiquette individuelle.\">" >> chrome\fr\locale\fr\messenger\quickFilterBar.dtd

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
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Affichage multiligne sur tous les dossiers\">" >> chrome\fr\locale\fr\messenger\messenger.dtd

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

:: Already translated, not yet in the language pack.
%lecho% "language-popup-label =" >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .value = Langue :"  >> localization\fr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = L"     >> localization\fr\messenger\preferences\preferences.ftl

%lecho% "vcard-custom-header = Custom Properties" >> localization\fr\messenger\addressbook\vcard.ftl
%lecho% "vcard-custom-add = Add custom properties" >> localization\fr\messenger\addressbook\vcard.ftl
