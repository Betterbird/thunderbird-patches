# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/en-GB/locale/en-GB/messenger/appstrings.properties

echo "groupButtonTooltipText=Add a new group" >> chrome/en-GB/locale/en-GB/messenger/search.properties

echo "<!ENTITY folderContextStartupFolder.label \"Startup Folder\">" >> chrome/en-GB/locale/en-GB/messenger/messenger.dtd

echo "quick-filter-bar-untagged-button ="            >> localization/en-GB/messenger/about3Pane.ftl
echo "    .tooltiptext = Show messages with no tags" >> localization/en-GB/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="              >> localization/en-GB/messenger/about3Pane.ftl
echo "    .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection." >> localization/en-GB/messenger/about3Pane.ftl

echo "enable-gloda-search-encrypted-label =" >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .label = Enable search in encrypted messages (stores decrypted copy locally)" >> localization/en-GB/messenger/preferences/preferences.ftl

echo "menuitem-recent-files ="             >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
echo "    .label = Recent File(s)…"        >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="     >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
echo "    .label = Attach Recent File(s)…" >> localization/en-GB/messenger/messengercompose/messengercompose.ftl

echo "menu-multi-line-all-folders ="               >> localization/en-GB/messenger/menubar.ftl
echo "    .label = Multi-line View On All Folders" >> localization/en-GB/messenger/menubar.ftl

echo "compose-send-plain-or-html-option =" >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .label = Plain Text or HTML"     >> localization/en-GB/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only." >> localization/en-GB/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
echo "    .label = Plain Text or HTML"        >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = O"                     >> localization/en-GB/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/en-GB/file/eda11f2a3883ce480a79885d5952e4655b5f9eec/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Unable to open mail spool file %S."    >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
echo "movemailCantCreateLock=Unable to create lock file %S. For movemail to work, it is necessary to create lock files in the mail spool directory. On many systems, this is best accomplished by making the spool directory be mode 01777." >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Unable to delete lock file %S."           >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Unable to truncate spool file %S." >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Unable to locate mail spool file."      >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
echo "movemailCantParseSpool=Unable to parse spool file %S. The file may be corrupt or not valid." >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                >> chrome/en-GB/locale/en-GB/messenger/messenger.properties

echo "account-action-add-movemail-account =" >> localization/en-GB/messenger/accountManager.ftl
echo "    .label = Add Movemail Account…"    >> localization/en-GB/messenger/accountManager.ftl
echo "    .accesskey = M"                    >> localization/en-GB/messenger/accountManager.ftl
echo "file-new-movemail-account ="           >> localization/en-GB/messenger/menubar.ftl
echo "    .label = Movemail Account…"        >> localization/en-GB/messenger/menubar.ftl
echo "    .accesskey = M"                    >> localization/en-GB/messenger/menubar.ftl

echo "unreadMsgStatus=Unread: %S"           >> chrome/en-GB/locale/en-GB/messenger/messenger.properties
echo "selectedMsgStatus=Selected: %S"       >> chrome/en-GB/locale/en-GB/messenger/messenger.properties
echo "totalMsgStatus=Total: %S"             >> chrome/en-GB/locale/en-GB/messenger/messenger.properties

echo "vertical-tabs-label ="                 >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .label = Show tab bar vertically"  >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                    >> localization/en-GB/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="       >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .label = Display attachment list above message" >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .accesskey = p"                    >> localization/en-GB/messenger/preferences/preferences.ftl

echo "restore-tabs-session-label ="          >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .value = Restore tabs on startup:" >> localization/en-GB/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                    >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .label = All tabs"                 >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .accesskey = t"                    >> localization/en-GB/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                 >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .label = System tabs"              >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .accesskey = s"                    >> localization/en-GB/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                     >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .label = None"                     >> localization/en-GB/messenger/preferences/preferences.ftl
echo "    .accesskey = n"                    >> localization/en-GB/messenger/preferences/preferences.ftl

echo "menu-view-layout-widethread =" >> localization/en-GB/messenger/menubar.ftl
echo "    .label = Wide Thread View" >> localization/en-GB/messenger/menubar.ftl
echo "    .accesskey = T"            >> localization/en-GB/messenger/menubar.ftl
echo "menu-view-layout-stacked ="    >> localization/en-GB/messenger/menubar.ftl
echo "    .label = Stacked View"     >> localization/en-GB/messenger/menubar.ftl
echo "    .accesskey = S"            >> localization/en-GB/messenger/menubar.ftl

echo "other-action-msg-edit-headers ="      >> localization/en-GB/messenger/messenger.ftl
echo "    .label = Edit Headers…"           >> localization/en-GB/messenger/messenger.ftl
echo "    .accesskey = H"                   >> localization/en-GB/messenger/messenger.ftl
echo "msg-edit-dialog-title = Edit Headers" >> localization/en-GB/messenger/messenger.ftl
echo "msg-edit-cancel-button = Cancel"      >> localization/en-GB/messenger/messenger.ftl
echo "msg-edit-restore-button = Restore"    >> localization/en-GB/messenger/messenger.ftl
echo "    .title = Show the original value" >> localization/en-GB/messenger/messenger.ftl
echo "msg-edit-update-button = Update"      >> localization/en-GB/messenger/messenger.ftl

echo "quick-filter-bar-negate ="                                                                                               >> localization/en-GB/messenger/about3Pane.ftl
echo "    .title = Right-click or Ctrl+Enter on a button negates the result."                                                  >> localization/en-GB/messenger/about3Pane.ftl
echo "      For the text and tag filter, any negated button creates an AND condition."                                         >> localization/en-GB/messenger/about3Pane.ftl
echo "      When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages." >> localization/en-GB/messenger/about3Pane.ftl
echo "      Examples:"                                                                                                         >> localization/en-GB/messenger/about3Pane.ftl
echo "      • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’."                       >> localization/en-GB/messenger/about3Pane.ftl
echo "      • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”." >> localization/en-GB/messenger/about3Pane.ftl
echo "      • [Any of] with [Important] negated and [Work] and [Personal] selected:"                                           >> localization/en-GB/messenger/about3Pane.ftl
echo "      Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag."   >> localization/en-GB/messenger/about3Pane.ftl

# New in 128:

echo "mail-context-unthread-message ="         >> localization/en-GB/messenger/messenger.ftl
echo "    .label = Unthread Message"           >> localization/en-GB/messenger/messenger.ftl
echo "    .accesskey = U"                      >> localization/en-GB/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="  >> localization/en-GB/messenger/messenger.ftl
echo "    .label = Restore Original Threading" >> localization/en-GB/messenger/messenger.ftl
echo "    .accesskey = R"                      >> localization/en-GB/messenger/messenger.ftl

# Disable account:
echo "account-disabled ="          >> localization/en-GB/messenger/accountSettings.ftl
echo "  .label = Account disabled" >> localization/en-GB/messenger/accountSettings.ftl

# Search AB via display name and nickname.
echo "quick-filter-bar-match-addressbook ="                                                               >> localization/en-GB/messenger/about3Pane.ftl
echo "    .label = Match Address Book"                                                                    >> localization/en-GB/messenger/about3Pane.ftl
echo "    .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books" >> localization/en-GB/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/en-GB/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/en-GB/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/en-GB/locale/en-GB/messenger/search-attributes.properties

# New in 140:

echo "menu-view-layout-horizontal =" >> localization/en-GB/messenger/menubar.ftl
echo "    .label = Horizontal View"  >> localization/en-GB/messenger/menubar.ftl
echo "    .accesskey = z"            >> localization/en-GB/messenger/menubar.ftl

echo "<!ENTITY storeOnUpdated.label \"Store updated articles\">" >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.\">" >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Store an archive of the web page with the article\">" >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd

echo "run-filters-on-incoming-msgs ="              >> localization/en-GB/messenger/folderprops.ftl
echo "  .label = Run filters on incoming messages" >> localization/en-GB/messenger/folderprops.ftl

echo "carddav-directory-sync-warning =" >> localization/en-GB/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Some data was dropped by the server, please check the Error Console for details" >> localization/en-GB/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/en-GB/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Synchronisation with the server failed, please check the Error Console for details" >> localization/en-GB/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
echo "folder-pane-context-reset-sort =" >> localization/en-GB/messenger/about3Pane.ftl
echo "  .label = Reset Folder Order"    >> localization/en-GB/messenger/about3Pane.ftl
echo "  .accesskey = R"                 >> localization/en-GB/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
echo "search-all-mail-accounts ="          >> localization/en-GB/messenger/messenger.ftl
echo "  .label = Search all mail accounts" >> localization/en-GB/messenger/messenger.ftl
echo "  .accesskey = m"                    >> localization/en-GB/messenger/messenger.ftl

# New Gloda facets:
echo "gloda.message.attr._subjectMatches.facetNameLabel=Subject" >> chrome/en-GB/locale/en-GB/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Body"       >> chrome/en-GB/locale/en-GB/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = Categories" >> localization/en-GB/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Categories" >> localization/en-GB/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Sort by categories"                            >> localization/en-GB/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="             >> localization/en-GB/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Categories"                                    >> localization/en-GB/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                     >> localization/en-GB/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Categories"                               >> localization/en-GB/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                   >> localization/en-GB/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Categories"                     >> localization/en-GB/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Add category"                        >> localization/en-GB/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Category"                    >> localization/en-GB/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Category name"               >> localization/en-GB/messenger/addressbook/vcard.ftl
echo "Categories=Categories" >> chrome/en-GB/locale/en-GB/messenger/search-attributes.properties
