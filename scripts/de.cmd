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
:: dock-options-show-badge =
::     .label = Show badge icon
::     .accesskey = b
:: Will need to translate these. "Icon" is usually "Symbol" in German and "badge" was never translated. Good luck to the translators.
:: "Badge icon" already seems to be a misnomer.
%lecho% "dock-options-show-badge =" >> localization\de\messenger\preferences\dock-options.ftl
%lecho% "    .label = Show badge icon" >> localization\de\messenger\preferences\dock-options.ftl
%lecho% "    .accesskey = b" >> localization\de\messenger\preferences\dock-options.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Mehrzeilen-Ansicht für alle Ordner\">" >> chrome\de\locale\de\messenger\messenger.dtd

:: Fix mess from https://bugzilla.mozilla.org/show_bug.cgi?id=1728893#c24
sed -i -e 's/return-receipt-checkbox/return-receipt-checkbox-control/'       localization\de\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-leave-radio/receipt-leave-radio-control/'               localization\de\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-move-radio/receipt-move-radio-control/'                 localization\de\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-return-never-radio/receipt-return-never-radio-control/' localization\de\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-return-some-radio/receipt-return-some-radio-control/'   localization\de\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-not-to-cc/receipt-not-to-cc-label/'                     localization\de\messenger\preferences\receipts.ftl
sed -i -e 's/sender-outside-domain/sender-outside-domain-label/'             localization\de\messenger\preferences\receipts.ftl
sed -i -e 's/other-cases-label/other-cases-text-label/'                      localization\de\messenger\preferences\receipts.ftl

:: Fix more mess from bug 1734933 and bug 1718411.
%lecho% "type-column-header = Dateityp" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "action-column-header = Aktion" >> localization\de\messenger\preferences\preferences.ftl

%lecho% "add-web-search-engine =" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "  .label = Hinzufügen…"  >> localization\de\messenger\preferences\preferences.ftl
%lecho% "  .accesskey = H"        >> localization\de\messenger\preferences\preferences.ftl
%lecho% "add-opensearch-provider-title = Add OpenSearch Provider" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "add-opensearch-provider-text = Enter the URL of the OpenSearch provider to add. Either use the direct URL of the OpenSearch Description file, or a URL where it can be auto-discovered." >> localization\de\messenger\preferences\preferences.ftl
%lecho% "adding-opensearch-provider-failed-title = Adding OpenSearch Provider Failed" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "adding-opensearch-provider-failed-text = Could not add OpenSearch Provider for { $url }." >> localization\de\messenger\preferences\preferences.ftl
