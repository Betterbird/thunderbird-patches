:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Neue Gruppe hinzufügen" >> chrome\de\locale\de\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Startordner\">" >> chrome\de\locale\de\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="                        >> localization\de\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Nachrichten ohne Schlagwörter anzeigen" >> localization\de\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                          >> localization\de\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Nachrichten mit einem oder mehreren Schlagwörter anzeigen. Rechts-Klick zum Löschen der Schlagwort-Auswahl." >> localization\de\messenger\about3Pane.ftl

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
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                   >> localization\de\messenger\menubar.ftl
%lecho% "    .label = Mehrzeilen-Ansicht für alle Ordner" >> localization\de\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .label = Reintext oder HTML"     >> localization\de\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Falls keine Stilformatierungen verwendet werden, erfolgt die Verwendung von Reintext. Ansonsten wird nur HTML eingesetzt." >> localization\de\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\de\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Reintext oder HTML"        >> localization\de\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\de\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/de/file/2f346846f995f942b61562fed125b0cc98e82a13/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Nachrichten-Warteschlangen-Datei %%S kann nicht geöffnet werden."            >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Die Sperrdatei %%S kann nicht erstellt werden. Für Movemail ist es notwendig, dass Sperrdateien im Nachrichten-Warteschlangen-Verzeichnis erstellt werden. Auf den meisten Systemen kann dies am besten ermöglicht werden, indem man das Nachrichten-Warteschlangen-Verzeichnis auf 01777 setzt." >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Die Sperrdatei %%S kann nicht gelöscht werden."                                 >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Die Warteschlangen-Datei %%S kann nicht gekürzt/zusammengefasst werden." >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Nachrichten-Warteschlangen-Datei kann nicht gefunden werden."                >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Die Warteschlangen-Datei %%S konnte nicht analysiert werden. Die Datei ist möglicherweise beschädigt oder enthält unzulässige Daten." >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                                                     >> chrome\de\locale\de\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="   >> localization\de\messenger\accountManager.ftl
%lecho% "    .label = Movemail-Konto hinzufügen…" >> localization\de\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                      >> localization\de\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="             >> localization\de\messenger\menubar.ftl
%lecho% "    .label = Movemail-Konto…"            >> localization\de\messenger\menubar.ftl
%lecho% "    .accesskey = M"                      >> localization\de\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Ungelesen: %%S"     >> chrome\de\locale\de\messenger\messenger.properties
%lecho% "selectedMsgStatus=Ausgewählt: %%S"  >> chrome\de\locale\de\messenger\messenger.properties
%lecho% "totalMsgStatus=Gesamt: %%S"         >> chrome\de\locale\de\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="               >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .label = Tab-Leiste vertikal anzeigen" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                  >> localization\de\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="     >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .label = Anhänge oberhalb der Nachricht anzeigen" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = o"                  >> localization\de\messenger\preferences\preferences.ftl

:: New string from bug 1837152. Taken from about3Pane.ftl: folder-pane-get-all-messages-menuitem.label and folder-pane-get-all-messages-menuitem.accesskey
%lecho% "toolbar-get-all-messages-menuitem =" >> localization\de\messenger\unifiedToolbar.ftl
%lecho% "  .label = Alle Konten abrufen"      >> localization\de\messenger\unifiedToolbar.ftl
%lecho% "  .accesskey = A"                    >> localization\de\messenger\unifiedToolbar.ftl
