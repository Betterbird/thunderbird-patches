# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/sv-SE/locale/sv-SE/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Lägg till en ny grupp" >> chrome/sv-SE/locale/sv-SE/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Startmapp\">" >> chrome/sv-SE/locale/sv-SE/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="              >> localization/sv-SE/messenger/about3Pane.ftl
echo "    .tooltiptext = Visa meddelanden utan taggar" >> localization/sv-SE/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                >> localization/sv-SE/messenger/about3Pane.ftl
echo "    .tooltiptext = Visa meddelanden med en eller flera taggar. Högerklicka för att rensa individuella taggval." >> localization/sv-SE/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .label = Aktivera sökning i krypterade meddelanden (lagrar dekrypterad kopia lokalt)" >> localization/sv-SE/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="                >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
echo "    .label = Senaste fil(er)…"          >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="        >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
echo "    .label = Bifoga den senaste filen…" >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="          >> localization/sv-SE/messenger/menubar.ftl
echo "    .label = Flerradsvy på alla mappar" >> localization/sv-SE/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option =" >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .label = Vanlig text eller HTML" >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Om meddelande saknar några stiler, skicka vanlig text. Annars, skicka endast HTML." >> localization/sv-SE/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
echo "    .label = Vanlig text eller HTML"    >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = O"                     >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg-edge.mozilla.org/l10n-central/sv-SE/file/33181fded8d77da81eec6d6e9d570b7757537020/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Kan inte öppna buffringsfilen för e-post %S." >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
echo "movemailCantCreateLock=Kan inte skapa låsfil %S. För att movemail ska fungera, är det nödvändigt att skapa låsfiler i buffringsmappen för e-post. På många system görs det genom att buffringsmappen sätt till läge 01777." >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Kan inte ta bort låsfil %S."                     >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Kan inte trunkera buffringsfil %S."       >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Kan inte hitta buffringsfil för e-post."       >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
echo "movemailCantParseSpool=Kan inte parsa buffringsfil %S. Filen kan vara skadad eller ogiltig." >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                       >> chrome/sv-SE/locale/sv-SE/messenger/messenger.properties

echo "account-action-add-movemail-account ="  >> localization/sv-SE/messenger/accountManager.ftl
echo "    .label = Lägg till Movemail-konto…" >> localization/sv-SE/messenger/accountManager.ftl
echo "    .accesskey = M"                     >> localization/sv-SE/messenger/accountManager.ftl
echo "file-new-movemail-account ="            >> localization/sv-SE/messenger/menubar.ftl
echo "    .label = Movemail-konto…"           >> localization/sv-SE/messenger/menubar.ftl
echo "    .accesskey = M"                     >> localization/sv-SE/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Oläst: %S"  >> chrome/sv-SE/locale/sv-SE/messenger/messenger.properties
echo "selectedMsgStatus=Vald: %S" >> chrome/sv-SE/locale/sv-SE/messenger/messenger.properties
echo "totalMsgStatus=Totalt: %S"  >> chrome/sv-SE/locale/sv-SE/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                         >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .label = Visa flikraden vertikalt"         >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                            >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="               >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .label = Visa bilagor ovanför meddelandet" >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .accesskey = o"                            >> localization/sv-SE/messenger/preferences/preferences.ftl

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
echo "restore-tabs-session-label ="             >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .value = Återställ flikar vid start:" >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                       >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .label = Alla flikar"                 >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .accesskey = A"                       >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                    >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .label = Systemflikar"                >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .accesskey = S"                       >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                        >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .label = Inga"                        >> localization/sv-SE/messenger/preferences/preferences.ftl
echo "    .accesskey = I"                       >> localization/sv-SE/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread =" >> localization/sv-SE/messenger/menubar.ftl
echo "    .label = Bred trådvy"      >> localization/sv-SE/messenger/menubar.ftl
echo "    .accesskey = B"            >> localization/sv-SE/messenger/menubar.ftl
echo "menu-view-layout-stacked ="    >> localization/sv-SE/messenger/menubar.ftl
echo "    .label = Staplad vy"       >> localization/sv-SE/messenger/menubar.ftl
echo "    .accesskey = S"            >> localization/sv-SE/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="           >> localization/sv-SE/messenger/messenger.ftl
echo "    .label = Redigera rubriker…"           >> localization/sv-SE/messenger/messenger.ftl
echo "    .accesskey = R"                        >> localization/sv-SE/messenger/messenger.ftl
echo "msg-edit-dialog-title = Redigera rubriker" >> localization/sv-SE/messenger/messenger.ftl
echo "msg-edit-cancel-button = Avbryt"           >> localization/sv-SE/messenger/messenger.ftl
echo "msg-edit-restore-button = Återställ"       >> localization/sv-SE/messenger/messenger.ftl
echo "    .title = Visa originalvärde"           >> localization/sv-SE/messenger/messenger.ftl
echo "msg-edit-update-button = Uppdatera"        >> localization/sv-SE/messenger/messenger.ftl

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
echo "quick-filter-bar-negate ="                                                                                                           >> localization/sv-SE/messenger/about3Pane.ftl
echo "    .title = Högerklick eller Ctrl+Enter på en knapp vänder om resultatet."                                                          >> localization/sv-SE/messenger/about3Pane.ftl
echo "      För text- och taggfiltret skapar varje negerad knapp ett OCH-villkor."                                                         >> localization/sv-SE/messenger/about3Pane.ftl
echo "      När taggfiltret är negerat, läggs respektive meddelanden till i listan över otaggade meddelanden genom att välja taggknappen." >> localization/sv-SE/messenger/about3Pane.ftl
echo "      Exempel:"                                                                                                                      >> localization/sv-SE/messenger/about3Pane.ftl
echo "      • [Stjärnmärkt] och [Taggar] negerade: Visa alla meddelanden som inte är ‘stjärnmärkta’ OCH inte ‘taggade’."                   >> localization/sv-SE/messenger/about3Pane.ftl
echo "      • [Ämne] negerad och [Meddelandetext] vald: Visa alla meddelanden där ‘Ämne’ inte innehåller “ord” OCH ‘Meddelandetext’ innehåller “ord”." >> localization/sv-SE/messenger/about3Pane.ftl
echo "      • [Någon av] med [Viktigt] negerad och [Arbete] och [Personligt] valda:"                                                       >> localization/sv-SE/messenger/about3Pane.ftl
echo "      Visar alla taggade meddelanden som inte har taggen ‘Viktigt’ OCH som har taggen ‘Arbete’ ELLER ‘Personligt’."                  >> localization/sv-SE/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="               >> localization/sv-SE/messenger/messenger.ftl
echo "    .label = Ta bort meddelande från tråden"   >> localization/sv-SE/messenger/messenger.ftl
echo "    .accesskey = T"                            >> localization/sv-SE/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="        >> localization/sv-SE/messenger/messenger.ftl
echo "    .label = Återställ den ursprunglia tråden" >> localization/sv-SE/messenger/messenger.ftl
echo "    .accesskey = Å"                            >> localization/sv-SE/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="           >> localization/sv-SE/messenger/accountSettings.ftl
echo "  .label = Konto inaktiverat" >> localization/sv-SE/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook =" >> localization/sv-SE/messenger/about3Pane.ftl
echo "    .label = Matcha adressboken"      >> localization/sv-SE/messenger/about3Pane.ftl
echo "    .tooltiptext = Matcha på visningsnamn (börjar med) eller smeknamn (exakt) från dina adressböcker" >> localization/sv-SE/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/sv-SE/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/sv-SE/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/sv-SE/locale/sv-SE/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal =" >> localization/sv-SE/messenger/menubar.ftl
echo "    .label = Horisontell vy"   >> localization/sv-SE/messenger/menubar.ftl
echo "    .accesskey = s"            >> localization/sv-SE/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Spara uppdaterade artiklar\">" >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"                      >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"För Atom- eller JSON-flöden med taggen &lt;updated&gt;. Om utgivaren ändrar värdet sparas artikeln istället för att behandlas som en dubblett.\">" >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Spara ett arkiv av webbsidan tillsammans med artikeln\">" >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                       >> localization/sv-SE/messenger/folderprops.ftl
echo "  .label = Tillämpa filter på inkommande meddelanden" >> localization/sv-SE/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/sv-SE/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Viss data togs bort av servern, kontrollera felkonsolen för mer information" >> localization/sv-SE/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/sv-SE/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Synkronisering med servern misslyckades, kontrollera felkonsolen för mer information" >> localization/sv-SE/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort =" >> localization/sv-SE/messenger/about3Pane.ftl
echo "  .label = Återställ mappordning" >> localization/sv-SE/messenger/about3Pane.ftl
echo "  .accesskey = t"                 >> localization/sv-SE/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts ="         >> localization/sv-SE/messenger/messenger.ftl
echo "  .label = Sök i alla e-postkonton" >> localization/sv-SE/messenger/messenger.ftl
echo "  .accesskey = p"                   >> localization/sv-SE/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=Ämne"    >> chrome/sv-SE/locale/sv-SE/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Innehållet" >> chrome/sv-SE/locale/sv-SE/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = Kategorier" >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Kategorier" >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Sortera efter kategorier"                      >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="             >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Kategorier"                                    >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                     >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Kategorier"                               >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                   >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Kategorier"                     >> localization/sv-SE/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Lägg till kategori"                  >> localization/sv-SE/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Kategori"                    >> localization/sv-SE/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Kategorinamn"                >> localization/sv-SE/messenger/addressbook/vcard.ftl
echo "Categories=Kategorier" >> chrome/sv-SE/locale/sv-SE/messenger/search-attributes.properties
