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

%lecho% "vcard-custom-header = Custom Properties" >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-custom-add = Add custom properties" >> localization\de\messenger\addressbook\vcard.ftl

%lecho% "apply-current-view-to-menu ="                >> localization\de\messenger\mailWidgets.ftl
%lecho% "    .label = Aktuelle Ansicht anwenden auf…" >> localization\de\messenger\mailWidgets.ftl
%lecho% "threadpane-apply-changes-prompt-title = Änderungen anwenden?" >> localization\de\messenger\mailWidgets.ftl
%lecho% "threadpane-apply-changes-prompt-no-children-text = Aktuelle Ansicht anwenden auf Ordner { $name }?" >> localization\de\messenger\mailWidgets.ftl
%lecho% "threadpane-apply-changes-prompt-with-children-text = Aktuelle Ansicht anwenden auf Ordner { $name } und alle Unterordner?" >> localization\de\messenger\mailWidgets.ftl

:: Fix the horrible mess TB made in https://bugzilla.mozilla.org/show_bug.cgi?id=1775273
sed -i -e 's/spaces-pinned-button-menuitem-mail/spaces-pinned-button-menuitem-mail2/' localization\de\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-address-book/spaces-pinned-button-menuitem-address-book2/' localization\de\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-calendar/spaces-pinned-button-menuitem-calendar2/' localization\de\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-tasks/spaces-pinned-button-menuitem-tasks2/' localization\de\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-chat/spaces-pinned-button-menuitem-chat2/' localization\de\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-settings/spaces-pinned-button-menuitem-settings2/' localization\de\messenger\messenger.ftl
