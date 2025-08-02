:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Nieuwe groep toevoegen" >> chrome\nl\locale\nl\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Start map\">" >> chrome\nl\locale\nl\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="               >> localization\nl\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Berichten zonder labels tonen" >> localization\nl\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                 >> localization\nl\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Berichten met een of meer labels tonen. Klik met de rechtermuisknop om de selectie van individuele labels te wissen." >> localization\nl\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .label = Versleutelde berichten doorzoekbaar maken (slaat ontsleutelde kopie lokaal op)" >> localization\nl\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                   >> localization\nl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Recent geopende bestand(en)…" >> localization\nl\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="           >> localization\nl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Voeg recent geopende bestand(en) toe…" >> localization\nl\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                              >> localization\nl\messenger\menubar.ftl
%lecho% "    .label = Weergave met meerdere regels voor alle mappen" >> localization\nl\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .label = Platte tekst of HTML"   >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Als er geen opmaak in het bericht wordt gebruikt, platte tekst verzenden. Anders alleen verzenden als HTML." >> localization\nl\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\nl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Platte tekst of HTML"      >> localization\nl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\nl\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/nl/file/9447d0706ca82640642ede3f8800f72db78e2f90/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Kan e-mailspoolbestand %%S niet openen." >> chrome\nl\locale\nl\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Kan lock-bestand %%S niet aanmaken. Om movemail te laten werken, is het nodig om lock-bestanden aan te maken in de e-mailspoolmap. Op veel systemen kan dit het beste worden bereikt door de spoolmap de modus 01777 te geven." >> chrome\nl\locale\nl\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Kan lock-bestand %%S niet verwijderen."     >> chrome\nl\locale\nl\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Kan spoolbestand %%S niet afkappen." >> chrome\nl\locale\nl\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Kan e-mailspoolbestand niet vinden."     >> chrome\nl\locale\nl\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Kan spoolbestand %%S niet parsen. Het bestand is mogelijk beschadigd of niet geldig." >> chrome\nl\locale\nl\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                 >> chrome\nl\locale\nl\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="    >> localization\nl\messenger\accountManager.ftl
%lecho% "    .label = Movemail-account toevoegen…" >> localization\nl\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                       >> localization\nl\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="              >> localization\nl\messenger\menubar.ftl
%lecho% "    .label = Movemail-account…"           >> localization\nl\messenger\menubar.ftl
%lecho% "    .accesskey = M"                       >> localization\nl\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Ongelezen: %%S"      >> chrome\nl\locale\nl\messenger\messenger.properties
%lecho% "selectedMsgStatus=Geselecteerd: %%S" >> chrome\nl\locale\nl\messenger\messenger.properties
%lecho% "totalMsgStatus=Totaal: %%S"          >> chrome\nl\locale\nl\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                      >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .label = Tabbladenbalk verticaal weergeven" >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                         >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="            >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .label = Toon bijlagen boven bericht"   >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = o"                         >> localization\nl\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                  >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .value = Heropen tabbladen bij opstarten:" >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                            >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .label = Alle tabbladen"                   >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = A"                            >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                         >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .label = Systeem tabbladen"                >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = S"                            >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                             >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .label = Geen"                             >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = G"                            >> localization\nl\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="    >> localization\nl\messenger\menubar.ftl
%lecho% "    .label = Breed gespreksbeeld" >> localization\nl\messenger\menubar.ftl
%lecho% "    .accesskey = B"               >> localization\nl\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="       >> localization\nl\messenger\menubar.ftl
%lecho% "    .label = Gestapeld beeld"     >> localization\nl\messenger\menubar.ftl
%lecho% "    .accesskey = G"               >> localization\nl\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="             >> localization\nl\messenger\messenger.ftl
%lecho% "    .label = Kopteksten bewerken…"           >> localization\nl\messenger\messenger.ftl
%lecho% "    .accesskey = K"                          >> localization\nl\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Kopteksten bewerken" >> localization\nl\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Annuleren"          >> localization\nl\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Herstellen"        >> localization\nl\messenger\messenger.ftl
%lecho% "    .title = Toon originele waarde"          >> localization\nl\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Update"             >> localization\nl\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                                              >> localization\nl\messenger\about3Pane.ftl
%lecho% "    .title = Rechtermuisklik of Ctrl+Enter draait het resultaat om."                                                    >> localization\nl\messenger\about3Pane.ftl
%lecho% "      Bij de tekst- en labelfilters, creëert een omgedraaide knop een EN-voorwaarde."                                   >> localization\nl\messenger\about3Pane.ftl
%lecho% "      Als het label-filter is omgedraaid, zal het selecteren van een label-knop de van toepasselijke emails toevoegen." >> localization\nl\messenger\about3Pane.ftl
%lecho% "      Voorbeelden:"                                                                                                     >> localization\nl\messenger\about3Pane.ftl
%lecho% "      • [Ster] en [Label] omgedraaid: Toon alle emails die Niet een ster hebben EN Geen label."                         >> localization\nl\messenger\about3Pane.ftl
%lecho% "      • [Onderwerp] omgedraaid en [Berichttekst] geselecteerd: Toon alle emails waarbij ‘Onderwerp’ Niet “woord” bevat EN ‘Berichttekst’ bevat “woord”." >> localization\nl\messenger\about3Pane.ftl
%lecho% "      • [Eén van] met [Belangrijk] omgedraaid en [Werk] en [Persoonlijk] geselecteerd:"                                 >> localization\nl\messenger\about3Pane.ftl
%lecho% "      Toon alle gelabelde emails die Niet het ‘Belangrijk’ label hebben EN die wel het ‘Werk’ OF het ‘Persoonlijk’ label hebben." >> localization\nl\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="                  >> localization\nl\messenger\messenger.ftl
%lecho% "    .label = Bericht uit conversatie verwijderen" >> localization\nl\messenger\messenger.ftl
%lecho% "    .accesskey = w"                               >> localization\nl\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="           >> localization\nl\messenger\messenger.ftl
%lecho% "    .label = Originele conversatie herstellen"    >> localization\nl\messenger\messenger.ftl
%lecho% "    .accesskey = h"                               >> localization\nl\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="               >> localization\nl\messenger\accountSettings.ftl
%lecho% "  .label = Account uitgeschakeld" >> localization\nl\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="                                                                    >> localization\nl\messenger\about3Pane.ftl
%lecho% "    .label = Adresboek vergelijken"                                                                      >> localization\nl\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Vergelijken op weergegeven naam (start met), of schermnaam (exact) in de adresboeken" >> localization\nl\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\nl\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\nl\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\nl\locale\nl\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal ="  >> localization\nl\messenger\menubar.ftl
%lecho% "    .label = Horizontaal beeld" >> localization\nl\messenger\menubar.ftl
%lecho% "    .accesskey = z"             >> localization\nl\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"Bijgewerkte artikelen opslaan\">" >> chrome\nl\locale\nl\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"b\">"                         >> chrome\nl\locale\nl\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"Voor Atom- of JSON-feeds met de tag "'&lt;updated&gt;'". Als de uitgever de waarde wijzigt, wordt het artikel opgeslagen in plaats van als duplicaat behandeld.\">" >> chrome\nl\locale\nl\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Sla een archief op van de webpagina samen met het artikel\">" >> chrome\nl\locale\nl\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\nl\locale\nl\messenger-newsblog\feed-subscriptions.dtd

:: Original strings:
:: run-filters-on-incoming-msgs =
::   .label = Run filters on incoming messages
%lecho% "run-filters-on-incoming-msgs ="                      >> localization\nl\messenger\folderprops.ftl
%lecho% "  .label = Filters toepassen op inkomende berichten" >> localization\nl\messenger\folderprops.ftl

:: Original strings:
:: carddav-directory-sync-warning =
::    CardDAV: Some data was dropped by the server, please check the Error Console for details
::carddav-directory-sync-failed =
::    CardDAV: Synchronisation with the server failed, please check the Error Console for details
%lecho% "carddav-directory-sync-warning =" >> localization\nl\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: Sommige gegevens zijn door de server verwijderd, controleer de Foutenconsole voor meer informatie" >> localization\nl\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "carddav-directory-sync-failed =" >> localization\nl\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: Synchronisatie met de server mislukt, controleer de Foutenconsole voor meer informatie" >> localization\nl\messenger\addressbook\abCardDAVProperties.ftl
