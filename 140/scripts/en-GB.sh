# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/en-GB/locale/en-GB/messenger/appstrings.properties

lessecho "groupButtonTooltipText=Add a new group" >> chrome/en-GB/locale/en-GB/messenger/search.properties

lessecho "<!ENTITY folderContextStartupFolder.label \"Startup Folder\">" >> chrome/en-GB/locale/en-GB/messenger/messenger.dtd

lessecho "quick-filter-bar-untagged-button ="            >> localization/en-GB/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Show messages with no tags" >> localization/en-GB/messenger/about3Pane.ftl
lessecho "quick-filter-bar-tagged-button ="              >> localization/en-GB/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection." >> localization/en-GB/messenger/about3Pane.ftl

lessecho "enable-gloda-search-encrypted-label =" >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .label = Enable search in encrypted messages (stores decrypted copy locally)" >> localization/en-GB/messenger/preferences/preferences.ftl

lessecho "menuitem-recent-files ="             >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Recent File(s)…"        >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
lessecho "context-menuitem-recent-files ="     >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Attach Recent File(s)…" >> localization/en-GB/messenger/messengercompose/messengercompose.ftl

lessecho "menu-multi-line-all-folders ="               >> localization/en-GB/messenger/menubar.ftl
lessecho "    .label = Multi-line View On All Folders" >> localization/en-GB/messenger/menubar.ftl

lessecho "compose-send-plain-or-html-option =" >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .label = Plain Text or HTML"     >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only." >> localization/en-GB/messenger/preferences/preferences.ftl

lessecho "compose-send-plain-or-html-menu-item =" >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Plain Text or HTML"        >> localization/en-GB/messenger/messengercompose/messengercompose.ftl
lessecho "    .accesskey = O"                     >> localization/en-GB/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/en-GB/file/eda11f2a3883ce480a79885d5952e4655b5f9eec/mail/chrome/messenger/localMsgs.properties
lessecho "movemailCantOpenSpoolFile=Unable to open mail spool file %S."    >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
lessecho "movemailCantCreateLock=Unable to create lock file %S. For movemail to work, it is necessary to create lock files in the mail spool directory. On many systems, this is best accomplished by making the spool directory be mode 01777." >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
lessecho "movemailCantDeleteLock=Unable to delete lock file %S."           >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
lessecho "movemailCantTruncateSpoolFile=Unable to truncate spool file %S." >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
lessecho "movemailSpoolFileNotFound=Unable to locate mail spool file."      >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
lessecho "movemailCantParseSpool=Unable to parse spool file %S. The file may be corrupt or not valid." >> chrome/en-GB/locale/en-GB/messenger/localMsgs.properties
lessecho "serverType-movemail=Unix Movemail"                                >> chrome/en-GB/locale/en-GB/messenger/messenger.properties

lessecho "account-action-add-movemail-account =" >> localization/en-GB/messenger/accountManager.ftl
lessecho "    .label = Add Movemail Account…"    >> localization/en-GB/messenger/accountManager.ftl
lessecho "    .accesskey = M"                    >> localization/en-GB/messenger/accountManager.ftl
lessecho "file-new-movemail-account ="           >> localization/en-GB/messenger/menubar.ftl
lessecho "    .label = Movemail Account…"        >> localization/en-GB/messenger/menubar.ftl
lessecho "    .accesskey = M"                    >> localization/en-GB/messenger/menubar.ftl

lessecho "unreadMsgStatus=Unread: %S"           >> chrome/en-GB/locale/en-GB/messenger/messenger.properties
lessecho "selectedMsgStatus=Selected: %S"       >> chrome/en-GB/locale/en-GB/messenger/messenger.properties
lessecho "totalMsgStatus=Total: %S"             >> chrome/en-GB/locale/en-GB/messenger/messenger.properties

lessecho "vertical-tabs-label ="                 >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .label = Show tab bar vertically"  >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .accesskey = v"                    >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "attachments-display-top-label ="       >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .label = Display attachment list above message" >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .accesskey = p"                    >> localization/en-GB/messenger/preferences/preferences.ftl

lessecho "restore-tabs-session-label ="          >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .value = Restore tabs on startup:" >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "restore-all-tabs ="                    >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .label = All tabs"                 >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .accesskey = t"                    >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "restore-system-tabs ="                 >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .label = System tabs"              >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .accesskey = s"                    >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "restore-no-tabs ="                     >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .label = None"                     >> localization/en-GB/messenger/preferences/preferences.ftl
lessecho "    .accesskey = n"                    >> localization/en-GB/messenger/preferences/preferences.ftl

lessecho "menu-view-layout-widethread =" >> localization/en-GB/messenger/menubar.ftl
lessecho "    .label = Wide Thread View" >> localization/en-GB/messenger/menubar.ftl
lessecho "    .accesskey = T"            >> localization/en-GB/messenger/menubar.ftl
lessecho "menu-view-layout-stacked ="    >> localization/en-GB/messenger/menubar.ftl
lessecho "    .label = Stacked View"     >> localization/en-GB/messenger/menubar.ftl
lessecho "    .accesskey = S"            >> localization/en-GB/messenger/menubar.ftl

lessecho "other-action-msg-edit-headers ="      >> localization/en-GB/messenger/messenger.ftl
lessecho "    .label = Edit Headers…"           >> localization/en-GB/messenger/messenger.ftl
lessecho "    .accesskey = H"                   >> localization/en-GB/messenger/messenger.ftl
lessecho "msg-edit-dialog-title = Edit Headers" >> localization/en-GB/messenger/messenger.ftl
lessecho "msg-edit-cancel-button = Cancel"      >> localization/en-GB/messenger/messenger.ftl
lessecho "msg-edit-restore-button = Restore"    >> localization/en-GB/messenger/messenger.ftl
lessecho "    .title = Show the original value" >> localization/en-GB/messenger/messenger.ftl
lessecho "msg-edit-update-button = Update"      >> localization/en-GB/messenger/messenger.ftl

lessecho "quick-filter-bar-negate ="                                                                                               >> localization/en-GB/messenger/about3Pane.ftl
lessecho "    .title = Right-click or Ctrl+Enter on a button negates the result."                                                  >> localization/en-GB/messenger/about3Pane.ftl
lessecho "      For the text and tag filter, any negated button creates an AND condition."                                         >> localization/en-GB/messenger/about3Pane.ftl
lessecho "      When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages." >> localization/en-GB/messenger/about3Pane.ftl
lessecho "      Examples:"                                                                                                         >> localization/en-GB/messenger/about3Pane.ftl
lessecho "      • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’."                       >> localization/en-GB/messenger/about3Pane.ftl
lessecho "      • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”." >> localization/en-GB/messenger/about3Pane.ftl
lessecho "      • [Any of] with [Important] negated and [Work] and [Personal] selected:"                                           >> localization/en-GB/messenger/about3Pane.ftl
lessecho "      Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag."   >> localization/en-GB/messenger/about3Pane.ftl

# New in 128:

lessecho "mail-context-unthread-message ="         >> localization/en-GB/messenger/messenger.ftl
lessecho "    .label = Unthread Message"           >> localization/en-GB/messenger/messenger.ftl
lessecho "    .accesskey = U"                      >> localization/en-GB/messenger/messenger.ftl
lessecho "mail-context-reset-message-threading ="  >> localization/en-GB/messenger/messenger.ftl
lessecho "    .label = Restore Original Threading" >> localization/en-GB/messenger/messenger.ftl
lessecho "    .accesskey = R"                      >> localization/en-GB/messenger/messenger.ftl

# Disable account:
lessecho "account-disabled ="          >> localization/en-GB/messenger/accountSettings.ftl
lessecho "  .label = Account disabled" >> localization/en-GB/messenger/accountSettings.ftl

# Search AB via display name and nickname.
lessecho "quick-filter-bar-match-addressbook ="                                                               >> localization/en-GB/messenger/about3Pane.ftl
lessecho "    .label = Match Address Book"                                                                    >> localization/en-GB/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books" >> localization/en-GB/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/en-GB/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/en-GB/messenger/preferences/preferences.ftl

lessecho "Expires=Expires" >> chrome/en-GB/locale/en-GB/messenger/search-attributes.properties

# New in 140:

lessecho "menu-view-layout-horizontal =" >> localization/en-GB/messenger/menubar.ftl
lessecho "    .label = Horizontal View"  >> localization/en-GB/messenger/menubar.ftl
lessecho "    .accesskey = z"            >> localization/en-GB/messenger/menubar.ftl

lessecho "<!ENTITY storeOnUpdated.label \"Store updated articles\">" >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdatedInfo.label \"For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.\">" >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.label \"Store an archive of the web page with the article\">" >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/en-GB/locale/en-GB/messenger-newsblog/feed-subscriptions.dtd

lessecho "run-filters-on-incoming-msgs ="              >> localization/en-GB/messenger/folderprops.ftl
lessecho "  .label = Run filters on incoming messages" >> localization/en-GB/messenger/folderprops.ftl

lessecho "carddav-directory-sync-warning =" >> localization/en-GB/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Some data was dropped by the server, please check the Error Console for details" >> localization/en-GB/messenger/addressbook/abCardDAVProperties.ftl
lessecho "carddav-directory-sync-failed =" >> localization/en-GB/messenger/addressbook/abCardDAVProperties.ftl
lessecho "    CardDAV: Synchronisation with the server failed, please check the Error Console for details" >> localization/en-GB/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
lessecho "folder-pane-context-reset-sort =" >> localization/en-GB/messenger/about3Pane.ftl
lessecho "  .label = Reset Folder Order"    >> localization/en-GB/messenger/about3Pane.ftl
lessecho "  .accesskey = R"                 >> localization/en-GB/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
lessecho "search-all-mail-accounts ="          >> localization/en-GB/messenger/messenger.ftl
lessecho "  .label = Search all mail accounts" >> localization/en-GB/messenger/messenger.ftl
lessecho "  .accesskey = m"                    >> localization/en-GB/messenger/messenger.ftl

# New Gloda facets:
lessecho "gloda.message.attr._subjectMatches.facetNameLabel=Subject" >> chrome/en-GB/locale/en-GB/messenger/gloda.properties
lessecho "gloda.message.attr._bodyMatches.facetNameLabel=Body"       >> chrome/en-GB/locale/en-GB/messenger/gloda.properties
