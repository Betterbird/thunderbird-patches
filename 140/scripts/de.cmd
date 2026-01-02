:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome\de\locale\de\messenger\appstrings.properties

:: Fix a bad translation
sed -i -e 's/label = Organisator/label = Organisieren/' localization\de\messenger\messenger.ftl

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
%lecho% "restore-tabs-session-label ="                   >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .value = Tabs beim Start wiederherstellen:" >> localization\de\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                             >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .label = Alle Tabs"                         >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = A"                             >> localization\de\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                          >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .label = System-Tabs"                       >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = S"                             >> localization\de\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                              >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .label = Keine"                             >> localization\de\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = K"                             >> localization\de\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="        >> localization\de\messenger\menubar.ftl
%lecho% "    .label = Breite Nachrichtenliste" >> localization\de\messenger\menubar.ftl
%lecho% "    .accesskey = B"                   >> localization\de\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="           >> localization\de\messenger\menubar.ftl
%lecho% "    .label = Übereinander-Ansicht"    >> localization\de\messenger\menubar.ftl
%lecho% "    .accesskey = Ü"                   >> localization\de\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="              >> localization\de\messenger\messenger.ftl
%lecho% "    .label = Kopfzeilen editieren…"           >> localization\de\messenger\messenger.ftl
%lecho% "    .accesskey = K"                           >> localization\de\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Kopfzeilen editieren" >> localization\de\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Abbrechen"           >> localization\de\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Wiederherstellen"   >> localization\de\messenger\messenger.ftl
%lecho% "    .title = Originalwert anzeigen"           >> localization\de\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Aktualisieren"       >> localization\de\messenger\messenger.ftl

:: Original strings:
:: quick-filter-bar-negate =
::     .title = Right-click or Ctrl+Enter on a button negates the result.
::       For the text and tag filter, any negated button creates an AND condition.
::       When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages.
::       Examples:
::       • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’.
::       • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”.
::       • [Any of] with [Important] negated and [Work] and [Personal] selected:
::       Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag.
%lecho% "quick-filter-bar-negate ="                                                                                                                >> localization\de\messenger\about3Pane.ftl
%lecho% "    .title = Rechts-Klick oder Strg+Eingabetaste auf eine Schaltfläche negiert das Ergebnis."                                             >> localization\de\messenger\about3Pane.ftl
%lecho% "      Für den Text- und Schlagwort-Filter erstellt jede Negierung eine UND-Bedingung."                                                    >> localization\de\messenger\about3Pane.ftl
%lecho% "      Wenn der Schlagwort-Filter negiert ist, werden durch Auswahl eines Schlagworts entsprechende Nachrichten zur Liste hinzugefügt."    >> localization\de\messenger\about3Pane.ftl
%lecho% "      Beispiele:"                                                                                                                         >> localization\de\messenger\about3Pane.ftl
%lecho% "      • [Kennzeichnung] und [Schlagwort] negiert: Zeigt Nachrichten, die Nicht gekennzeichnet sind UND Keine Schlagwörter haben."         >> localization\de\messenger\about3Pane.ftl
%lecho% "      • [Betreff] negiert und [Nachrichteninhalt] ausgewählt: Zeigt Nachrichten, bei denen ‚Betreff‘ Nicht „Wort“ enthält UND ‚Nachrichteninhalt‘ „Wort“ enthält." >> localization\de\messenger\about3Pane.ftl
%lecho% "      • [Eins der Ausgewählten] mit [Wichtig] negiert und [Dienstlich] und [Persönlich] ausgewählt:"                                      >> localization\de\messenger\about3Pane.ftl
%lecho% "      Zeigt Nachrichten mit Schlagwörtern, die Schlagwort ‚Wichtig‘ Nicht haben UND die Schlagwort ‚Dienstlich‘ ODER ‚Persönlich‘ haben." >> localization\de\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="                         >> localization\de\messenger\messenger.ftl
%lecho% "    .label = Nachricht aus Themenbaum entfernen"         >> localization\de\messenger\messenger.ftl
%lecho% "    .accesskey = f"                                      >> localization\de\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="                  >> localization\de\messenger\messenger.ftl
%lecho% "    .label = Ursprünglichen Themenbaum wiederherstellen" >> localization\de\messenger\messenger.ftl
%lecho% "    .accesskey = U"                                      >> localization\de\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="           >> localization\de\messenger\accountSettings.ftl
%lecho% "  .label = Konto deaktiviert" >> localization\de\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="                                                                  >> localization\de\messenger\about3Pane.ftl
%lecho% "    .label = Adressbuch vergleichen"                                                                   >> localization\de\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Anzeigename (beginnt mit) oder Spitzname (exakt) aus den Adressbüchern vergleichen" >> localization\de\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\de\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\de\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\de\locale\de\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal ="    >> localization\de\messenger\menubar.ftl
%lecho% "    .label = Horizontale Ansicht" >> localization\de\messenger\menubar.ftl
%lecho% "    .accesskey = z"               >> localization\de\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"Aktualisierte Artikel speichern\">" >> chrome\de\locale\de\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                           >> chrome\de\locale\de\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"Für Atom- oder JSON-Feeds mit dem "'&lt;updated&gt;'"-Tag. Wenn der Herausgeber den Wert ändert, wird der Artikel gespeichert, anstatt ihn als Duplikat zu behandeln.\">" >> chrome\de\locale\de\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Archiv der Webseite zusammen mit dem Artikel speichern\">" >> chrome\de\locale\de\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\de\locale\de\messenger-newsblog\feed-subscriptions.dtd

:: Original strings:
:: run-filters-on-incoming-msgs =
::   .label = Run filters on incoming messages
%lecho% "run-filters-on-incoming-msgs ="                        >> localization\de\messenger\folderprops.ftl
%lecho% "  .label = Filter auf eingehende Nachrichten anwenden" >> localization\de\messenger\folderprops.ftl

:: Original strings:
:: carddav-directory-sync-warning =
::    CardDAV: Some data was dropped by the server, please check the Error Console for details
::carddav-directory-sync-failed =
::    CardDAV: Synchronisation with the server failed, please check the Error Console for details
%lecho% "carddav-directory-sync-warning =" >> localization\de\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: Einige Daten wurden vom Server verworfen, bitte prüfen Sie die Fehlerkonsole für Details" >> localization\de\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "carddav-directory-sync-failed =" >> localization\de\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: Synchronisation mit dem Server fehlgeschlagen, bitte prüfen Sie die Fehlerkonsole für Details" >> localization\de\messenger\addressbook\abCardDAVProperties.ftl

:: Strings for bug 1972710:
:: folder-pane-context-reset-sort =
::   .label = Reset Folder Order
::   .accesskey = R
%lecho% "folder-pane-context-reset-sort ="          >> localization\de\messenger\about3Pane.ftl
%lecho% "  .label = Ordnerreihenfolge zurücksetzen" >> localization\de\messenger\about3Pane.ftl
%lecho% "  .accesskey = r"                          >> localization\de\messenger\about3Pane.ftl

:: Strings for searching all mail accounts:
:: search-all-mail-accounts =
::   .label = Search all mail accounts
::   .accesskey = m
%lecho% "search-all-mail-accounts ="                >> localization\de\messenger\messenger.ftl
%lecho% "  .label = Alle E-Mail-Konten durchsuchen" >> localization\de\messenger\messenger.ftl
%lecho% "  .accesskey = K"                          >> localization\de\messenger\messenger.ftl

:: New Gloda facets:
:: gloda.message.attr._subjectMatches.facetNameLabel=Subject
:: gloda.message.attr._bodyMatches.facetNameLabel=Body
%lecho% "gloda.message.attr._subjectMatches.facetNameLabel=Betreff"        >> chrome\de\locale\de\messenger\gloda.properties
%lecho% "gloda.message.attr._bodyMatches.facetNameLabel=Nachrichteninhalt" >> chrome\de\locale\de\messenger\gloda.properties

:: Categories:
%lecho% "about-addressbook-details-categories-header = Kategorien" >> localization\de\messenger\addressbook\aboutAddressBook.ftl
%lecho% "about-addressbook-column-header-categories2 = Kategorien" >> localization\de\messenger\addressbook\aboutAddressBook.ftl
%lecho% "  .title = Nach Kategorien sortieren"                     >> localization\de\messenger\addressbook\aboutAddressBook.ftl
%lecho% "about-addressbook-column-label-categories2 ="             >> localization\de\messenger\addressbook\aboutAddressBook.ftl
%lecho% "  .label = Kategorien"                                    >> localization\de\messenger\addressbook\aboutAddressBook.ftl
%lecho% "about-addressbook-cell-categories2 ="                     >> localization\de\messenger\addressbook\aboutAddressBook.ftl
%lecho% "  .aria-label = Kategorien"                               >> localization\de\messenger\addressbook\aboutAddressBook.ftl
%lecho% "  .title = { $title }"                                    >> localization\de\messenger\addressbook\aboutAddressBook.ftl
%lecho% "vcard-categories-header = Kategorien"                     >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-category-add = Kategorie hinzufügen"                >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-category-input-label = Kategorie"                   >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "vcard-category-input-title = Name der Kategorie"          >> localization\de\messenger\addressbook\vcard.ftl
%lecho% "Categories=Kategorien" >> chrome\de\locale\de\messenger\search-attributes.properties
