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
:: mail-multiline-all-folders =
::     .label = Multi-line View On All Folders
:: mail-multiline-individual-folders =
::     .label = Multi-line View Via Subject Column
:: mail-multiline-no-folders =
::     .label = No Multi-line View
%lecho% "mail-multiline-all-folders ="        >> localization\de\messenger\menubar.ftl
%lecho% "    .label = Mehrzeilen-Ansicht für alle Ordner" >> localization\de\messenger\menubar.ftl
%lecho% "mail-multiline-individual-folders =" >> localization\de\messenger\menubar.ftl
%lecho% "    .label = Mehrzeilen-Ansicht mittels der Betreff-Spalte" >> localization\de\messenger\menubar.ftl
%lecho% "mail-multiline-no-folders ="         >> localization\de\messenger\menubar.ftl
%lecho% "    .label = Keine Mehrzeilen-Ansicht" >> localization\de\messenger\menubar.ftl

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

:: Fix missing ! in the about box.
sed -i -e 's/ENTITY helpus.end.*""/ENTITY helpus.end "!"/' chrome\de\locale\de\messenger\aboutDialog.dtd

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/de/file/2f346846f995f942b61562fed125b0cc98e82a13/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Nachrichten-Warteschlangen-Datei %%S kann nicht geöffnet werden."            >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Die Sperrdatei %%S kann nicht erstellt werden. Für Movemail ist es notwendig, dass Sperrdateien im Nachrichten-Warteschlangen-Verzeichnis erstellt werden. Auf den meisten Systemen kann dies am besten ermöglicht werden, indem man das Nachrichten-Warteschlangen-Verzeichnis auf 01777 setzt." >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Die Sperrdatei %%S kann nicht gelöscht werden."                                 >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Die Warteschlangen-Datei %%S kann nicht gekürzt/zusammengefasst werden." >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Nachrichten-Warteschlangen-Datei kann nicht gefunden werden."               >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Die Warteschlangen-Datei %%S konnte nicht analysiert werden. Die Datei ist möglicherweise beschädigt oder enthält unzulässige Daten." >> chrome\de\locale\de\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                                                    >> chrome\de\locale\de\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="   >> localization\de\messenger\accountManager.ftl
%lecho% "    .label = Movemail-Konto hinzufügen…" >> localization\de\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                      >> localization\de\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="             >> localization\de\messenger\menubar.ftl
%lecho% "    .label = Movemail-Konto…"            >> localization\de\messenger\menubar.ftl
%lecho% "    .accesskey = M"                      >> localization\de\messenger\menubar.ftl

:: Fix the horrible mess TB made in https://bugzilla.mozilla.org/show_bug.cgi?id=1775273
:: Now aggravated by https://hg.mozilla.org/l10n-central/de/diff/f583e525fabb238644dc921aaf6e90a348d8edf6/mail/messenger/messenger.ftl#l1.79
%lecho% "spaces-pinned-button-menuitem-mail2 ="                      >> localization\de\messenger\messenger.ftl
%lecho% "    .label = { spaces-toolbar-button-mail2.title }"         >> localization\de\messenger\messenger.ftl
%lecho% "spaces-pinned-button-menuitem-address-book2 ="              >> localization\de\messenger\messenger.ftl
%lecho% "    .label = { spaces-toolbar-button-address-book2.title }" >> localization\de\messenger\messenger.ftl
%lecho% "spaces-pinned-button-menuitem-calendar2 ="                  >> localization\de\messenger\messenger.ftl
%lecho% "    .label = { spaces-toolbar-button-calendar2.title }"     >> localization\de\messenger\messenger.ftl
%lecho% "spaces-pinned-button-menuitem-tasks2 ="                     >> localization\de\messenger\messenger.ftl
%lecho% "    .label = { spaces-toolbar-button-tasks2.title }"        >> localization\de\messenger\messenger.ftl
%lecho% "spaces-pinned-button-menuitem-chat2 ="                      >> localization\de\messenger\messenger.ftl
%lecho% "    .label = { spaces-toolbar-button-chat2.title }"         >> localization\de\messenger\messenger.ftl
%lecho% "spaces-pinned-button-menuitem-settings2 ="                  >> localization\de\messenger\messenger.ftl
%lecho% "    .label = { spaces-toolbar-button-settings2.title }"     >> localization\de\messenger\messenger.ftl

:: Fix new strings from bug 1776706, https://hg.mozilla.org/releases/comm-esr102/rev/8018a64a9d62#l6.12
%lecho% "about-addressbook-details-impp-header = Instant Messaging" >> localization\de\messenger\addressbook\aboutAddressBook.ftl
%lecho% "vcard-impp2-header = Instant Messaging"                    >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-impp-select = Protocol"                              >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-impp-option-other = Other"                           >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-impp-input-label = URI"                              >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-impp-input-title = URI for instant messaging"        >> localization\de\messenger\addressbook\vcard.ftl

:: More new strings from bug 1777780, https://hg.mozilla.org/releases/comm-esr102/rev/3dfd43ae97e1#l6.12
%lecho% "vcard-org-title-input ="                                   >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "    .title = Position or job"                              >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "    .placeholder = Job title"                              >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-org-role-input ="                                    >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "    .title = Function or part played in a particular situation" >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "    .placeholder = Role in a project"                      >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-org-org-input ="                                     >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "    .title = Organizational name"                          >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "    .placeholder = Company name"                           >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-org-org-unit = Department"                           >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-org-org-unit-input ="                                >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "    .title = Organizational unit name"                     >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "    .placeholder = Department"                             >> localization\de\messenger\addressbook\vcard.ftl

:: More new strings from bug 1799874, https://hg.mozilla.org/releases/comm-esr102/rev/5861ab971be6#l8.14
:: Fix missing break at end of file first.
%lecho% "" >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "mail-libs-title = Bibliotheken-Versionen"                                             >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "libs-table-heading-library = Bibliothek"                                              >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "libs-table-heading-expected-version = Minimal vorausgesetzte Version"                 >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "libs-table-heading-loaded-version = Verwendete Version"                               >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "libs-table-heading-path = Dateipfad"                                                  >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "libs-table-heading-status = Status"                                                   >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "libs-rnp-status-ok = OK"                                                              >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "libs-rnp-status-load-failed = Failed to load. OpenPGP will not work."                 >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "libs-rnp-status-incompatible = Incompatible version. OpenPGP will not work."          >> localization\de\messenger\aboutSupportMail.ftl
%lecho% "libs-rnp-status-unofficial = Unofficial version. OpenPGP might not work as expected." >> localization\de\messenger\aboutSupportMail.ftl
