# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/nl/locale/nl/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
lessecho "groupButtonTooltipText=Nieuwe groep toevoegen" >> chrome/nl/locale/nl/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
lessecho "<!ENTITY folderContextStartupFolder.label \"Start map\">" >> chrome/nl/locale/nl/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
lessecho "quick-filter-bar-untagged-button ="               >> localization/nl/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Berichten zonder labels tonen" >> localization/nl/messenger/about3Pane.ftl
lessecho "quick-filter-bar-tagged-button ="                 >> localization/nl/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Berichten met een of meer labels tonen. Klik met de rechtermuisknop om de selectie van individuele labels te wissen." >> localization/nl/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
lessecho "enable-gloda-search-encrypted-label =" >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .label = Versleutelde berichten doorzoekbaar maken (slaat ontsleutelde kopie lokaal op)" >> localization/nl/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
lessecho "menuitem-recent-files ="                   >> localization/nl/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Recent geopende bestand(en)…" >> localization/nl/messenger/messengercompose/messengercompose.ftl
lessecho "context-menuitem-recent-files ="           >> localization/nl/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Voeg recent geopende bestand(en) toe…" >> localization/nl/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
lessecho "menu-multi-line-all-folders ="                              >> localization/nl/messenger/menubar.ftl
lessecho "    .label = Weergave met meerdere regels voor alle mappen" >> localization/nl/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
lessecho "compose-send-plain-or-html-option =" >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .label = Platte tekst of HTML"   >> localization/nl/messenger/preferences/preferences.ftl
lessecho "compose-send-plain-or-html-description = Als er geen opmaak in het bericht wordt gebruikt, platte tekst verzenden. Anders alleen verzenden als HTML." >> localization/nl/messenger/preferences/preferences.ftl

lessecho "compose-send-plain-or-html-menu-item =" >> localization/nl/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Platte tekst of HTML"      >> localization/nl/messenger/messengercompose/messengercompose.ftl
lessecho "    .accesskey = O"                     >> localization/nl/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/nl/file/9447d0706ca82640642ede3f8800f72db78e2f90/mail/chrome/messenger/localMsgs.properties
lessecho "movemailCantOpenSpoolFile=Kan e-mailspoolbestand %S niet openen." >> chrome/nl/locale/nl/messenger/localMsgs.properties
lessecho "movemailCantCreateLock=Kan lock-bestand %S niet aanmaken. Om movemail te laten werken, is het nodig om lock-bestanden aan te maken in de e-mailspoolmap. Op veel systemen kan dit het beste worden bereikt door de spoolmap de modus 01777 te geven." >> chrome/nl/locale/nl/messenger/localMsgs.properties
lessecho "movemailCantDeleteLock=Kan lock-bestand %S niet verwijderen."     >> chrome/nl/locale/nl/messenger/localMsgs.properties
lessecho "movemailCantTruncateSpoolFile=Kan spoolbestand %S niet afkappen." >> chrome/nl/locale/nl/messenger/localMsgs.properties
lessecho "movemailSpoolFileNotFound=Kan e-mailspoolbestand niet vinden."     >> chrome/nl/locale/nl/messenger/localMsgs.properties
lessecho "movemailCantParseSpool=Kan spoolbestand %S niet parsen. Het bestand is mogelijk beschadigd of niet geldig." >> chrome/nl/locale/nl/messenger/localMsgs.properties
lessecho "serverType-movemail=Unix Movemail"                                 >> chrome/nl/locale/nl/messenger/messenger.properties

lessecho "account-action-add-movemail-account ="    >> localization/nl/messenger/accountManager.ftl
lessecho "    .label = Movemail-account toevoegen…" >> localization/nl/messenger/accountManager.ftl
lessecho "    .accesskey = M"                       >> localization/nl/messenger/accountManager.ftl
lessecho "file-new-movemail-account ="              >> localization/nl/messenger/menubar.ftl
lessecho "    .label = Movemail-account…"           >> localization/nl/messenger/menubar.ftl
lessecho "    .accesskey = M"                       >> localization/nl/messenger/menubar.ftl

# Unread/seleted status
lessecho "unreadMsgStatus=Ongelezen: %S"      >> chrome/nl/locale/nl/messenger/messenger.properties
lessecho "selectedMsgStatus=Geselecteerd: %S" >> chrome/nl/locale/nl/messenger/messenger.properties
lessecho "totalMsgStatus=Totaal: %S"          >> chrome/nl/locale/nl/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
lessecho "vertical-tabs-label ="                      >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .label = Tabbladenbalk verticaal weergeven" >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = v"                         >> localization/nl/messenger/preferences/preferences.ftl
lessecho "attachments-display-top-label ="            >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .label = Toon bijlagen boven bericht"   >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = o"                         >> localization/nl/messenger/preferences/preferences.ftl

# Original strings:
# restore-tabs-session-label =
#     .value = Restore tabs on startup:
# restore-all-tabs =
#     .label = All tabs
#     .accesskey = t
# restore-system-tabs =
#     .label = System tabs
#     .accesskey = s
# restore-no-tabs =
#     .label = None
#     .accesskey = n
lessecho "restore-tabs-session-label ="                  >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .value = Heropen tabbladen bij opstarten:" >> localization/nl/messenger/preferences/preferences.ftl
lessecho "restore-all-tabs ="                            >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .label = Alle tabbladen"                   >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = A"                            >> localization/nl/messenger/preferences/preferences.ftl
lessecho "restore-system-tabs ="                         >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .label = Systeem tabbladen"                >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = S"                            >> localization/nl/messenger/preferences/preferences.ftl
lessecho "restore-no-tabs ="                             >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .label = Geen"                             >> localization/nl/messenger/preferences/preferences.ftl
lessecho "    .accesskey = G"                            >> localization/nl/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
lessecho "menu-view-layout-widethread ="    >> localization/nl/messenger/menubar.ftl
lessecho "    .label = Breed gespreksbeeld" >> localization/nl/messenger/menubar.ftl
lessecho "    .accesskey = B"               >> localization/nl/messenger/menubar.ftl
lessecho "menu-view-layout-stacked ="       >> localization/nl/messenger/menubar.ftl
lessecho "    .label = Gestapeld beeld"     >> localization/nl/messenger/menubar.ftl
lessecho "    .accesskey = G"               >> localization/nl/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
lessecho "other-action-msg-edit-headers ="             >> localization/nl/messenger/messenger.ftl
lessecho "    .label = Kopteksten bewerken…"           >> localization/nl/messenger/messenger.ftl
lessecho "    .accesskey = K"                          >> localization/nl/messenger/messenger.ftl
lessecho "msg-edit-dialog-title = Kopteksten bewerken" >> localization/nl/messenger/messenger.ftl
lessecho "msg-edit-cancel-button = Annuleren"          >> localization/nl/messenger/messenger.ftl
lessecho "msg-edit-restore-button = Herstellen"        >> localization/nl/messenger/messenger.ftl
lessecho "    .title = Toon originele waarde"          >> localization/nl/messenger/messenger.ftl
lessecho "msg-edit-update-button = Update"             >> localization/nl/messenger/messenger.ftl

# Original strings:
# quick-filter-bar-negate =
#     .title = Right-click or Ctrl+Enter on a button negates the result.
#       For the text and tag filter, any negated button creates an AND condition.
#       When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages.
#       Examples:
#       • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’.
#       • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”.
#       • [Any of] with [Important] negated and [Work] and [Personal] selected:
#       Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag.
lessecho "quick-filter-bar-negate ="                                                                                              >> localization/nl/messenger/about3Pane.ftl
lessecho "    .title = Rechtermuisklik of Ctrl+Enter draait het resultaat om."                                                    >> localization/nl/messenger/about3Pane.ftl
lessecho "      Bij de tekst- en labelfilters, creëert een omgedraaide knop een EN-voorwaarde."                                   >> localization/nl/messenger/about3Pane.ftl
lessecho "      Als het label-filter is omgedraaid, zal het selecteren van een label-knop de van toepasselijke emails toevoegen." >> localization/nl/messenger/about3Pane.ftl
lessecho "      Voorbeelden:"                                                                                                     >> localization/nl/messenger/about3Pane.ftl
lessecho "      • [Ster] en [Label] omgedraaid: Toon alle emails die Niet een ster hebben EN Geen label."                         >> localization/nl/messenger/about3Pane.ftl
lessecho "      • [Onderwerp] omgedraaid en [Berichttekst] geselecteerd: Toon alle emails waarbij ‘Onderwerp’ Niet “woord” bevat EN ‘Berichttekst’ bevat “woord”." >> localization/nl/messenger/about3Pane.ftl
lessecho "      • [Eén van] met [Belangrijk] omgedraaid en [Werk] en [Persoonlijk] geselecteerd:"                                 >> localization/nl/messenger/about3Pane.ftl
lessecho "      Toon alle gelabelde emails die Niet het ‘Belangrijk’ label hebben EN die wel het ‘Werk’ OF het ‘Persoonlijk’ label hebben." >> localization/nl/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
lessecho "mail-context-unthread-message ="                  >> localization/nl/messenger/messenger.ftl
lessecho "    .label = Bericht uit conversatie verwijderen" >> localization/nl/messenger/messenger.ftl
lessecho "    .accesskey = w"                               >> localization/nl/messenger/messenger.ftl
lessecho "mail-context-reset-message-threading ="           >> localization/nl/messenger/messenger.ftl
lessecho "    .label = Originele conversatie herstellen"    >> localization/nl/messenger/messenger.ftl
lessecho "    .accesskey = h"                               >> localization/nl/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
lessecho "account-disabled ="               >> localization/nl/messenger/accountSettings.ftl
lessecho "  .label = Account uitgeschakeld" >> localization/nl/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
lessecho "quick-filter-bar-match-addressbook ="                                                                    >> localization/nl/messenger/about3Pane.ftl
lessecho "    .label = Adresboek vergelijken"                                                                      >> localization/nl/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Vergelijken op weergegeven naam (start met), of schermnaam (exact) in de adresboeken" >> localization/nl/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/nl/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/nl/messenger/preferences/preferences.ftl

lessecho "Expires=Expires" >> chrome/nl/locale/nl/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
lessecho "menu-view-layout-horizontal ="  >> localization/nl/messenger/menubar.ftl
lessecho "    .label = Horizontaal beeld" >> localization/nl/messenger/menubar.ftl
lessecho "    .accesskey = z"             >> localization/nl/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
lessecho "<!ENTITY storeOnUpdated.label \"Bijgewerkte artikelen opslaan\">" >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdated.accesskey \"b\">"                         >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdatedInfo.label \"Voor Atom- of JSON-feeds met de tag "'&lt;updated&gt;'". Als de uitgever de waarde wijzigt, wordt het artikel opgeslagen in plaats van als duplicaat behandeld.\">" >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.label \"Sla een archief op van de webpagina samen met het artikel\">" >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
lessecho "run-filters-on-incoming-msgs ="                      >> localization/nl/messenger/folderprops.ftl
lessecho "  .label = Filters toepassen op inkomende berichten" >> localization/nl/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
lessecho "carddav-directory-sync-warning =" >> localization/nl/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Sommige gegevens zijn door de server verwijderd, controleer de Foutenconsole voor meer informatie" >> localization/nl/messenger/addressbook/abCardDAVProperties.ftl
lessecho "carddav-directory-sync-failed =" >> localization/nl/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Synchronisatie met de server mislukt, controleer de Foutenconsole voor meer informatie" >> localization/nl/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
lessecho "folder-pane-context-reset-sort ="           >> localization/nl/messenger/about3Pane.ftl
lessecho "  .label = Mappenvolgorde herinitialiseren" >> localization/nl/messenger/about3Pane.ftl
lessecho "  .accesskey = h"                           >> localization/nl/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
lessecho "search-all-mail-accounts ="                >> localization/nl/messenger/messenger.ftl
lessecho "  .label = Alle e-mailaccounts doorzoeken" >> localization/nl/messenger/messenger.ftl
lessecho "  .accesskey = m"                          >> localization/nl/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
lessecho "gloda.message.attr._subjectMatches.facetNameLabel=Onderwerp" >> chrome/nl/locale/nl/messenger/gloda.properties
lessecho "gloda.message.attr._bodyMatches.facetNameLabel=Berichttekst" >> chrome/nl/locale/nl/messenger/gloda.properties

# Categories:
lessecho "about-addressbook-details-categories-header = Categorieën" >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-header-categories2 = Categorieën" >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = Sorteren op categorieën"                        >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-label-categories2 ="              >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .label = Categorieën"                                    >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-cell-categories2 ="                      >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .aria-label = Categorieën"                               >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = { \$title }"                                    >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
lessecho "vcard-categories-header = Categorieën"                     >> localization/nl/messenger/addressbook/vcard.ftl
lessecho "vcard-category-add = Categorie toevoegen"                  >> localization/nl/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-label = Categorie"                    >> localization/nl/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-title = Categorienaam"                >> localization/nl/messenger/addressbook/vcard.ftl
lessecho "Categories=Categorieën" >> chrome/nl/locale/nl/messenger/search-attributes.properties
