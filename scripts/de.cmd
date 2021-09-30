:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Sadly its output is windows-1252 and we need UTF-8.
set icv=iconv -f windows-1252 -t utf-8

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"Themenbaum\">" >> chrome\de\locale\de\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"Themenbaum für ausgewählte Nachrichten anzeigen\">" | %icv% >> chrome\de\locale\de\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"Weiterleiten als\">" >> chrome\de\locale\de\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"In Ordner entschlüsseln\">" | %icv% >> chrome\de\locale\de\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"h\">" >> chrome\de\locale\de\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Nachrichten ohne Schlagwörter anzeigen\">" | %icv% >> chrome\de\locale\de\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Nachrichten mit einem oder mehreren Schlagwörter anzeigen. Rechts-Klick zum Löschen der Schlagwort-Auswahl.\">" | %icv% >> chrome\de\locale\de\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .label = Verschlüsselte Nachrichten durchsuchbar machen (speichert entschlüsselte Kopie lokal)" | %icv% >> localization\de\messenger\preferences\preferences.ftl

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
%lecho% "<!ENTITY multilineAllFolders.label \"Mehrzeilen-Ansicht für alle Ordner\">" | %icv% >> chrome\de\locale\de\messenger\messenger.dtd
