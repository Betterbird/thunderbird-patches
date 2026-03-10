# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/nl/locale/nl/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Nieuwe groep toevoegen" >> chrome/nl/locale/nl/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Start map\">" >> chrome/nl/locale/nl/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="               >> localization/nl/messenger/about3Pane.ftl
echo "    .tooltiptext = Berichten zonder labels tonen" >> localization/nl/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                 >> localization/nl/messenger/about3Pane.ftl
echo "    .tooltiptext = Berichten met een of meer labels tonen. Klik met de rechtermuisknop om de selectie van individuele labels te wissen." >> localization/nl/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/nl/messenger/preferences/preferences.ftl
echo "    .label = Versleutelde berichten doorzoekbaar maken (slaat ontsleutelde kopie lokaal op)" >> localization/nl/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="                   >> localization/nl/messenger/messengercompose/messengercompose.ftl
echo "    .label = Recent geopende bestand(en)…" >> localization/nl/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="           >> localization/nl/messenger/messengercompose/messengercompose.ftl
echo "    .label = Voeg recent geopende bestand(en) toe…" >> localization/nl/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                              >> localization/nl/messenger/menubar.ftl
echo "    .label = Weergave met meerdere regels voor alle mappen" >> localization/nl/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option =" >> localization/nl/messenger/preferences/preferences.ftl
echo "    .label = Platte tekst of HTML"   >> localization/nl/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Als er geen opmaak in het bericht wordt gebruikt, platte tekst verzenden. Anders alleen verzenden als HTML." >> localization/nl/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/nl/messenger/messengercompose/messengercompose.ftl
echo "    .label = Platte tekst of HTML"      >> localization/nl/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = O"                     >> localization/nl/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/nl/file/9447d0706ca82640642ede3f8800f72db78e2f90/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Kan e-mailspoolbestand %S niet openen." >> chrome/nl/locale/nl/messenger/localMsgs.properties
echo "movemailCantCreateLock=Kan lock-bestand %S niet aanmaken. Om movemail te laten werken, is het nodig om lock-bestanden aan te maken in de e-mailspoolmap. Op veel systemen kan dit het beste worden bereikt door de spoolmap de modus 01777 te geven." >> chrome/nl/locale/nl/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Kan lock-bestand %S niet verwijderen."     >> chrome/nl/locale/nl/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Kan spoolbestand %S niet afkappen." >> chrome/nl/locale/nl/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Kan e-mailspoolbestand niet vinden."     >> chrome/nl/locale/nl/messenger/localMsgs.properties
echo "movemailCantParseSpool=Kan spoolbestand %S niet parsen. Het bestand is mogelijk beschadigd of niet geldig." >> chrome/nl/locale/nl/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                 >> chrome/nl/locale/nl/messenger/messenger.properties

echo "account-action-add-movemail-account ="    >> localization/nl/messenger/accountManager.ftl
echo "    .label = Movemail-account toevoegen…" >> localization/nl/messenger/accountManager.ftl
echo "    .accesskey = M"                       >> localization/nl/messenger/accountManager.ftl
echo "file-new-movemail-account ="              >> localization/nl/messenger/menubar.ftl
echo "    .label = Movemail-account…"           >> localization/nl/messenger/menubar.ftl
echo "    .accesskey = M"                       >> localization/nl/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Ongelezen: %S"      >> chrome/nl/locale/nl/messenger/messenger.properties
echo "selectedMsgStatus=Geselecteerd: %S" >> chrome/nl/locale/nl/messenger/messenger.properties
echo "totalMsgStatus=Totaal: %S"          >> chrome/nl/locale/nl/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                      >> localization/nl/messenger/preferences/preferences.ftl
echo "    .label = Tabbladenbalk verticaal weergeven" >> localization/nl/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                         >> localization/nl/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="            >> localization/nl/messenger/preferences/preferences.ftl
echo "    .label = Toon bijlagen boven bericht"   >> localization/nl/messenger/preferences/preferences.ftl
echo "    .accesskey = o"                         >> localization/nl/messenger/preferences/preferences.ftl

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
echo "restore-tabs-session-label ="                  >> localization/nl/messenger/preferences/preferences.ftl
echo "    .value = Heropen tabbladen bij opstarten:" >> localization/nl/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                            >> localization/nl/messenger/preferences/preferences.ftl
echo "    .label = Alle tabbladen"                   >> localization/nl/messenger/preferences/preferences.ftl
echo "    .accesskey = A"                            >> localization/nl/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                         >> localization/nl/messenger/preferences/preferences.ftl
echo "    .label = Systeem tabbladen"                >> localization/nl/messenger/preferences/preferences.ftl
echo "    .accesskey = S"                            >> localization/nl/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                             >> localization/nl/messenger/preferences/preferences.ftl
echo "    .label = Geen"                             >> localization/nl/messenger/preferences/preferences.ftl
echo "    .accesskey = G"                            >> localization/nl/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread ="    >> localization/nl/messenger/menubar.ftl
echo "    .label = Breed gespreksbeeld" >> localization/nl/messenger/menubar.ftl
echo "    .accesskey = B"               >> localization/nl/messenger/menubar.ftl
echo "menu-view-layout-stacked ="       >> localization/nl/messenger/menubar.ftl
echo "    .label = Gestapeld beeld"     >> localization/nl/messenger/menubar.ftl
echo "    .accesskey = G"               >> localization/nl/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="             >> localization/nl/messenger/messenger.ftl
echo "    .label = Kopteksten bewerken…"           >> localization/nl/messenger/messenger.ftl
echo "    .accesskey = K"                          >> localization/nl/messenger/messenger.ftl
echo "msg-edit-dialog-title = Kopteksten bewerken" >> localization/nl/messenger/messenger.ftl
echo "msg-edit-cancel-button = Annuleren"          >> localization/nl/messenger/messenger.ftl
echo "msg-edit-restore-button = Herstellen"        >> localization/nl/messenger/messenger.ftl
echo "    .title = Toon originele waarde"          >> localization/nl/messenger/messenger.ftl
echo "msg-edit-update-button = Update"             >> localization/nl/messenger/messenger.ftl

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
echo "quick-filter-bar-negate ="                                                                                              >> localization/nl/messenger/about3Pane.ftl
echo "    .title = Rechtermuisklik of Ctrl+Enter draait het resultaat om."                                                    >> localization/nl/messenger/about3Pane.ftl
echo "      Bij de tekst- en labelfilters, creëert een omgedraaide knop een EN-voorwaarde."                                   >> localization/nl/messenger/about3Pane.ftl
echo "      Als het label-filter is omgedraaid, zal het selecteren van een label-knop de van toepasselijke emails toevoegen." >> localization/nl/messenger/about3Pane.ftl
echo "      Voorbeelden:"                                                                                                     >> localization/nl/messenger/about3Pane.ftl
echo "      • [Ster] en [Label] omgedraaid: Toon alle emails die Niet een ster hebben EN Geen label."                         >> localization/nl/messenger/about3Pane.ftl
echo "      • [Onderwerp] omgedraaid en [Berichttekst] geselecteerd: Toon alle emails waarbij ‘Onderwerp’ Niet “woord” bevat EN ‘Berichttekst’ bevat “woord”." >> localization/nl/messenger/about3Pane.ftl
echo "      • [Eén van] met [Belangrijk] omgedraaid en [Werk] en [Persoonlijk] geselecteerd:"                                 >> localization/nl/messenger/about3Pane.ftl
echo "      Toon alle gelabelde emails die Niet het ‘Belangrijk’ label hebben EN die wel het ‘Werk’ OF het ‘Persoonlijk’ label hebben." >> localization/nl/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="                  >> localization/nl/messenger/messenger.ftl
echo "    .label = Bericht uit conversatie verwijderen" >> localization/nl/messenger/messenger.ftl
echo "    .accesskey = w"                               >> localization/nl/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="           >> localization/nl/messenger/messenger.ftl
echo "    .label = Originele conversatie herstellen"    >> localization/nl/messenger/messenger.ftl
echo "    .accesskey = h"                               >> localization/nl/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="               >> localization/nl/messenger/accountSettings.ftl
echo "  .label = Account uitgeschakeld" >> localization/nl/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="                                                                    >> localization/nl/messenger/about3Pane.ftl
echo "    .label = Adresboek vergelijken"                                                                      >> localization/nl/messenger/about3Pane.ftl
echo "    .tooltiptext = Vergelijken op weergegeven naam (start met), of schermnaam (exact) in de adresboeken" >> localization/nl/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/nl/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/nl/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/nl/locale/nl/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal ="  >> localization/nl/messenger/menubar.ftl
echo "    .label = Horizontaal beeld" >> localization/nl/messenger/menubar.ftl
echo "    .accesskey = z"             >> localization/nl/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Bijgewerkte artikelen opslaan\">" >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"b\">"                         >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"Voor Atom- of JSON-feeds met de tag &lt;updated&gt;. Als de uitgever de waarde wijzigt, wordt het artikel opgeslagen in plaats van als duplicaat behandeld.\">" >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Sla een archief op van de webpagina samen met het artikel\">" >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/nl/locale/nl/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                      >> localization/nl/messenger/folderprops.ftl
echo "  .label = Filters toepassen op inkomende berichten" >> localization/nl/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/nl/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Sommige gegevens zijn door de server verwijderd, controleer de Foutenconsole voor meer informatie" >> localization/nl/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/nl/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Synchronisatie met de server mislukt, controleer de Foutenconsole voor meer informatie" >> localization/nl/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort ="           >> localization/nl/messenger/about3Pane.ftl
echo "  .label = Mappenvolgorde herinitialiseren" >> localization/nl/messenger/about3Pane.ftl
echo "  .accesskey = h"                           >> localization/nl/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts ="                >> localization/nl/messenger/messenger.ftl
echo "  .label = Alle e-mailaccounts doorzoeken" >> localization/nl/messenger/messenger.ftl
echo "  .accesskey = m"                          >> localization/nl/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=Onderwerp" >> chrome/nl/locale/nl/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Berichttekst" >> chrome/nl/locale/nl/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = Categorieën" >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Categorieën" >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Sorteren op categorieën"                        >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="              >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Categorieën"                                    >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                      >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Categorieën"                               >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                    >> localization/nl/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Categorieën"                     >> localization/nl/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Categorie toevoegen"                  >> localization/nl/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Categorie"                    >> localization/nl/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Categorienaam"                >> localization/nl/messenger/addressbook/vcard.ftl
echo "Categories=Categorieën" >> chrome/nl/locale/nl/messenger/search-attributes.properties
