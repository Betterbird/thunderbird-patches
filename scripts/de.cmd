:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"Themenbaum\">" >> chrome\de\locale\de\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"Themenbaum für ausgewählte Nachrichten anzeigen\">" >> chrome\de\locale\de\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"Weiterleiten als\">" >> chrome\de\locale\de\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"In Ordner entschlüsseln\">" >> chrome\de\locale\de\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"h\">" >> chrome\de\locale\de\messenger\messenger.dtd
:: decryptToFolder.title=Confirm Decrypt
:: decryptToFolder.desc=This will decrypt messages to a folder which is not local. Are you sure you want to continue?
:: decryptToFolder.dontAsk.label=Don't ask me again.
%lecho% "decryptToFolder.title=Entschlüsselung Bestätigen" >> chrome\de\locale\de\messenger\messenger.properties
%lecho% "decryptToFolder.desc=Dies wird die Nachrichten in einen nicht lokalen Ordner entschlüsseln. Sind Sie sicher, dass Sie fortsetzen möchten?" >> chrome\de\locale\de\messenger\messenger.properties
%lecho% "decryptToFolder.dontAsk.label=Diese Meldung nicht mehr anzeigen" >> chrome\de\locale\de\messenger\messenger.properties

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Neue Gruppe hinzufügen" >> chrome\de\locale\de\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Startordner\">" >> chrome\de\locale\de\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Nachrichten ohne Schlagwörter anzeigen\">" >> chrome\de\locale\de\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Nachrichten mit einem oder mehreren Schlagwörter anzeigen. Rechts-Klick zum Löschen der Schlagwort-Auswahl.\">" >> chrome\de\locale\de\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .label = Verschlüsselte Nachrichten durchsuchbar machen (speichert entschlüsselte Kopie lokal)" >> localization\de\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                   >> localization\de\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Zuletzt geöffnete Datei(en)…" >> localization\de\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="           >> localization\de\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Zuletzt geöffnete Datei(en) anhängen…" >> localization\de\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Mehrzeilen-Ansicht für alle Ordner\">" >> chrome\de\locale\de\messenger\messenger.dtd

:: Fix more mess from bug 1753824.
%lecho% "attachment-bucket-count-value = { $count ->" >> localization\de\messenger\messengercompose\messengercompose.ftl
%lecho% "    [1]      { $count } Anhang"  >> localization\de\messenger\messengercompose\messengercompose.ftl
%lecho% "    *[other] { $count } Anhänge" >> localization\de\messenger\messengercompose\messengercompose.ftl
%lecho% "}"                               >> localization\de\messenger\messengercompose\messengercompose.ftl

:: And more strings from bug 1724090.
%lecho% "calendar-print-back-button = Zurück" >> localization\de\calendar\calendar-print.ftl

:: Fix mess from bug 1764806, hard-coded brand-names
sed -i -e 's/ Thunderbird / Betterbird /' localization\de\messenger\openpgp\keyWizard.ftl
sed -i -e 's/ Thunderbird / Betterbird /' localization\de\messenger\openpgp\openpgp.ftl
