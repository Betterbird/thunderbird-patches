:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"Conversation\">" >> chrome\fr\locale\fr\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"Afficher la conversation du message sélectionné\">" >> chrome\fr\locale\fr\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"Transférer au format\">" >> chrome\fr\locale\fr\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"Décrypter dans un dossier\">" >> chrome\fr\locale\fr\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"y\">" >> chrome\fr\locale\fr\messenger\messenger.dtd
:: decryptToFolder.title=Confirm Decrypt
:: decryptToFolder.desc=This will decrypt messages to a folder which is not local. Are you sure you want to continue?
:: decryptToFolder.dontAsk.label=Don't ask me again.
%lecho% "decryptToFolder.title=Confirmer le décryptage" >> chrome\fr\locale\fr\messenger\messenger.properties
%lecho% "decryptToFolder.desc=Déchiffrer les messages dans un dossier qui n’est pas local. Voulez-vous vraiment continuer ?" >> chrome\fr\locale\fr\messenger\messenger.properties
%lecho% "decryptToFolder.dontAsk.label=Ne plus demander à l’avenir." >> chrome\fr\locale\fr\messenger\messenger.properties

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
:: dock-options-show-badge =
::     .label = Show badge icon
::     .accesskey = b
:: -- Already correct in the language pack --

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Affichage multiligne sur tous les dossiers\">" >> chrome\fr\locale\fr\messenger\messenger.dtd

:: Fix mess from https://bugzilla.mozilla.org/show_bug.cgi?id=1728893#c24
:: -- Already correct in the language pack --

:: Fix more mess from bug 1734933 and bug 1718411.
:: -- Already correct in the language pack --

:: Fix more mess from bug 1753824.
%lecho% "attachment-bucket-count = { $count ->"  >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "    [1]      { $count } pièce jointe"   >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "    *[other] { $count } pièces jointes" >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "}"                                      >> localization\fr\messenger\messengercompose\messengercompose.ftl

:: And more strings from bug 1724090.
:: -- Already correct in the language pack --
