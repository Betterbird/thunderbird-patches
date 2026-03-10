# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/sv-SE/locale/sv-SE/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
lessecho "groupButtonTooltipText=Lägg till en ny grupp" >> chrome/sv-SE/locale/sv-SE/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
lessecho "<!ENTITY folderContextStartupFolder.label \"Startmapp\">" >> chrome/sv-SE/locale/sv-SE/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
lessecho "quick-filter-bar-untagged-button ="              >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Visa meddelanden utan taggar" >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "quick-filter-bar-tagged-button ="                >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Visa meddelanden med en eller flera taggar. Högerklicka för att rensa individuella taggval." >> localization/sv-SE/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
lessecho "enable-gloda-search-encrypted-label =" >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .label = Aktivera sökning i krypterade meddelanden (lagrar dekrypterad kopia lokalt)" >> localization/sv-SE/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
lessecho "menuitem-recent-files ="                >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Senaste fil(er)…"          >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
lessecho "context-menuitem-recent-files ="        >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Bifoga den senaste filen…" >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
lessecho "menu-multi-line-all-folders ="          >> localization/sv-SE/messenger/menubar.ftl
lessecho "    .label = Flerradsvy på alla mappar" >> localization/sv-SE/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
lessecho "compose-send-plain-or-html-option =" >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .label = Vanlig text eller HTML" >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "compose-send-plain-or-html-description = Om meddelande saknar några stiler, skicka vanlig text. Annars, skicka endast HTML." >> localization/sv-SE/messenger/preferences/preferences.ftl

lessecho "compose-send-plain-or-html-menu-item =" >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Vanlig text eller HTML"    >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl
lessecho "    .accesskey = O"                     >> localization/sv-SE/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg-edge.mozilla.org/l10n-central/sv-SE/file/33181fded8d77da81eec6d6e9d570b7757537020/mail/chrome/messenger/localMsgs.properties
lessecho "movemailCantOpenSpoolFile=Kan inte öppna buffringsfilen för e-post %S." >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
lessecho "movemailCantCreateLock=Kan inte skapa låsfil %S. För att movemail ska fungera, är det nödvändigt att skapa låsfiler i buffringsmappen för e-post. På många system görs det genom att buffringsmappen sätt till läge 01777." >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
lessecho "movemailCantDeleteLock=Kan inte ta bort låsfil %S."                     >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
lessecho "movemailCantTruncateSpoolFile=Kan inte trunkera buffringsfil %S."       >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
lessecho "movemailSpoolFileNotFound=Kan inte hitta buffringsfil för e-post."       >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
lessecho "movemailCantParseSpool=Kan inte parsa buffringsfil %S. Filen kan vara skadad eller ogiltig." >> chrome/sv-SE/locale/sv-SE/messenger/localMsgs.properties
lessecho "serverType-movemail=Unix Movemail"                                       >> chrome/sv-SE/locale/sv-SE/messenger/messenger.properties

lessecho "account-action-add-movemail-account ="  >> localization/sv-SE/messenger/accountManager.ftl
lessecho "    .label = Lägg till Movemail-konto…" >> localization/sv-SE/messenger/accountManager.ftl
lessecho "    .accesskey = M"                     >> localization/sv-SE/messenger/accountManager.ftl
lessecho "file-new-movemail-account ="            >> localization/sv-SE/messenger/menubar.ftl
lessecho "    .label = Movemail-konto…"           >> localization/sv-SE/messenger/menubar.ftl
lessecho "    .accesskey = M"                     >> localization/sv-SE/messenger/menubar.ftl

# Unread/seleted status
lessecho "unreadMsgStatus=Oläst: %S"  >> chrome/sv-SE/locale/sv-SE/messenger/messenger.properties
lessecho "selectedMsgStatus=Vald: %S" >> chrome/sv-SE/locale/sv-SE/messenger/messenger.properties
lessecho "totalMsgStatus=Totalt: %S"  >> chrome/sv-SE/locale/sv-SE/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
lessecho "vertical-tabs-label ="                         >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .label = Visa flikraden vertikalt"         >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .accesskey = v"                            >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "attachments-display-top-label ="               >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .label = Visa bilagor ovanför meddelandet" >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .accesskey = o"                            >> localization/sv-SE/messenger/preferences/preferences.ftl

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
lessecho "restore-tabs-session-label ="             >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .value = Återställ flikar vid start:" >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "restore-all-tabs ="                       >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .label = Alla flikar"                 >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .accesskey = A"                       >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "restore-system-tabs ="                    >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .label = Systemflikar"                >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .accesskey = S"                       >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "restore-no-tabs ="                        >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .label = Inga"                        >> localization/sv-SE/messenger/preferences/preferences.ftl
lessecho "    .accesskey = I"                       >> localization/sv-SE/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
lessecho "menu-view-layout-widethread =" >> localization/sv-SE/messenger/menubar.ftl
lessecho "    .label = Bred trådvy"      >> localization/sv-SE/messenger/menubar.ftl
lessecho "    .accesskey = B"            >> localization/sv-SE/messenger/menubar.ftl
lessecho "menu-view-layout-stacked ="    >> localization/sv-SE/messenger/menubar.ftl
lessecho "    .label = Staplad vy"       >> localization/sv-SE/messenger/menubar.ftl
lessecho "    .accesskey = S"            >> localization/sv-SE/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
lessecho "other-action-msg-edit-headers ="           >> localization/sv-SE/messenger/messenger.ftl
lessecho "    .label = Redigera rubriker…"           >> localization/sv-SE/messenger/messenger.ftl
lessecho "    .accesskey = R"                        >> localization/sv-SE/messenger/messenger.ftl
lessecho "msg-edit-dialog-title = Redigera rubriker" >> localization/sv-SE/messenger/messenger.ftl
lessecho "msg-edit-cancel-button = Avbryt"           >> localization/sv-SE/messenger/messenger.ftl
lessecho "msg-edit-restore-button = Återställ"       >> localization/sv-SE/messenger/messenger.ftl
lessecho "    .title = Visa originalvärde"           >> localization/sv-SE/messenger/messenger.ftl
lessecho "msg-edit-update-button = Uppdatera"        >> localization/sv-SE/messenger/messenger.ftl

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
lessecho "quick-filter-bar-negate ="                                                                                                           >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "    .title = Högerklick eller Ctrl+Enter på en knapp vänder om resultatet."                                                          >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "      För text- och taggfiltret skapar varje negerad knapp ett OCH-villkor."                                                         >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "      När taggfiltret är negerat, läggs respektive meddelanden till i listan över otaggade meddelanden genom att välja taggknappen." >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "      Exempel:"                                                                                                                      >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "      • [Stjärnmärkt] och [Taggar] negerade: Visa alla meddelanden som inte är ‘stjärnmärkta’ OCH inte ‘taggade’."                   >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "      • [Ämne] negerad och [Meddelandetext] vald: Visa alla meddelanden där ‘Ämne’ inte innehåller “ord” OCH ‘Meddelandetext’ innehåller “ord”." >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "      • [Någon av] med [Viktigt] negerad och [Arbete] och [Personligt] valda:"                                                       >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "      Visar alla taggade meddelanden som inte har taggen ‘Viktigt’ OCH som har taggen ‘Arbete’ ELLER ‘Personligt’."                  >> localization/sv-SE/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
lessecho "mail-context-unthread-message ="               >> localization/sv-SE/messenger/messenger.ftl
lessecho "    .label = Ta bort meddelande från tråden"   >> localization/sv-SE/messenger/messenger.ftl
lessecho "    .accesskey = T"                            >> localization/sv-SE/messenger/messenger.ftl
lessecho "mail-context-reset-message-threading ="        >> localization/sv-SE/messenger/messenger.ftl
lessecho "    .label = Återställ den ursprunglia tråden" >> localization/sv-SE/messenger/messenger.ftl
lessecho "    .accesskey = Å"                            >> localization/sv-SE/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
lessecho "account-disabled ="           >> localization/sv-SE/messenger/accountSettings.ftl
lessecho "  .label = Konto inaktiverat" >> localization/sv-SE/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
lessecho "quick-filter-bar-match-addressbook =" >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "    .label = Matcha adressboken"      >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Matcha på visningsnamn (börjar med) eller smeknamn (exakt) från dina adressböcker" >> localization/sv-SE/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/sv-SE/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/sv-SE/messenger/preferences/preferences.ftl

lessecho "Expires=Expires" >> chrome/sv-SE/locale/sv-SE/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
lessecho "menu-view-layout-horizontal =" >> localization/sv-SE/messenger/menubar.ftl
lessecho "    .label = Horisontell vy"   >> localization/sv-SE/messenger/menubar.ftl
lessecho "    .accesskey = s"            >> localization/sv-SE/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
lessecho "<!ENTITY storeOnUpdated.label \"Spara uppdaterade artiklar\">" >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdated.accesskey \"u\">"                      >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdatedInfo.label \"För Atom- eller JSON-flöden med taggen "'&lt;updated&gt;'". Om utgivaren ändrar värdet sparas artikeln istället för att behandlas som en dubblett.\">" >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.label \"Spara ett arkiv av webbsidan tillsammans med artikeln\">" >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/sv-SE/locale/sv-SE/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
lessecho "run-filters-on-incoming-msgs ="                       >> localization/sv-SE/messenger/folderprops.ftl
lessecho "  .label = Tillämpa filter på inkommande meddelanden" >> localization/sv-SE/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
lessecho "carddav-directory-sync-warning =" >> localization/sv-SE/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Viss data togs bort av servern, kontrollera felkonsolen för mer information" >> localization/sv-SE/messenger/addressbook/abCardDAVProperties.ftl
lessecho "carddav-directory-sync-failed =" >> localization/sv-SE/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Synkronisering med servern misslyckades, kontrollera felkonsolen för mer information" >> localization/sv-SE/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
lessecho "folder-pane-context-reset-sort =" >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "  .label = Återställ mappordning" >> localization/sv-SE/messenger/about3Pane.ftl
lessecho "  .accesskey = t"                 >> localization/sv-SE/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
lessecho "search-all-mail-accounts ="         >> localization/sv-SE/messenger/messenger.ftl
lessecho "  .label = Sök i alla e-postkonton" >> localization/sv-SE/messenger/messenger.ftl
lessecho "  .accesskey = p"                   >> localization/sv-SE/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
lessecho "gloda.message.attr._subjectMatches.facetNameLabel=Ämne"    >> chrome/sv-SE/locale/sv-SE/messenger/gloda.properties
lessecho "gloda.message.attr._bodyMatches.facetNameLabel=Innehållet" >> chrome/sv-SE/locale/sv-SE/messenger/gloda.properties

# Categories:
lessecho "about-addressbook-details-categories-header = Kategorier" >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-header-categories2 = Kategorier" >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = Sortera efter kategorier"                      >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-column-label-categories2 ="             >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .label = Kategorier"                                    >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
lessecho "about-addressbook-cell-categories2 ="                     >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .aria-label = Kategorier"                               >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
lessecho "  .title = { \$title }"                                   >> localization/sv-SE/messenger/addressbook/aboutAddressBook.ftl
lessecho "vcard-categories-header = Kategorier"                     >> localization/sv-SE/messenger/addressbook/vcard.ftl
lessecho "vcard-category-add = Lägg till kategori"                  >> localization/sv-SE/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-label = Kategori"                    >> localization/sv-SE/messenger/addressbook/vcard.ftl
lessecho "vcard-category-input-title = Kategorinamn"                >> localization/sv-SE/messenger/addressbook/vcard.ftl
lessecho "Categories=Kategorier" >> chrome/sv-SE/locale/sv-SE/messenger/search-attributes.properties
