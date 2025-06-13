:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

%lecho% "groupButtonTooltipText=Add a new group" >> chrome\en-GB\locale\en-GB\messenger\search.properties

%lecho% "<!ENTITY folderContextStartupFolder.label \"Startup Folder\">" >> chrome\en-GB\locale\en-GB\messenger\messenger.dtd

%lecho% "quick-filter-bar-untagged-button ="            >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Show messages with no tags" >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="              >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection." >> localization\en-GB\messenger\about3Pane.ftl

%lecho% "enable-gloda-search-encrypted-label =" >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .label = Enable search in encrypted messages (stores decrypted copy locally)" >> localization\en-GB\messenger\preferences\preferences.ftl

%lecho% "menuitem-recent-files ="             >> localization\en-GB\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Recent File(s)…"        >> localization\en-GB\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="     >> localization\en-GB\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Attach Recent File(s)…" >> localization\en-GB\messenger\messengercompose\messengercompose.ftl

%lecho% "menu-multi-line-all-folders ="               >> localization\en-GB\messenger\menubar.ftl
%lecho% "    .label = Multi-line View On All Folders" >> localization\en-GB\messenger\menubar.ftl

%lecho% "compose-send-plain-or-html-option =" >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .label = Plain Text or HTML"     >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only." >> localization\en-GB\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\en-GB\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Plain Text or HTML"        >> localization\en-GB\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\en-GB\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/en-GB/file/eda11f2a3883ce480a79885d5952e4655b5f9eec/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Unable to open mail spool file %%S."    >> chrome\en-GB\locale\en-GB\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Unable to create lock file %%S. For movemail to work, it is necessary to create lock files in the mail spool directory. On many systems, this is best accomplished by making the spool directory be mode 01777." >> chrome\en-GB\locale\en-GB\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Unable to delete lock file %%S."           >> chrome\en-GB\locale\en-GB\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Unable to truncate spool file %%S." >> chrome\en-GB\locale\en-GB\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Unable to locate mail spool file."      >> chrome\en-GB\locale\en-GB\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Unable to parse spool file %%S. The file may be corrupt or not valid." >> chrome\en-GB\locale\en-GB\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                >> chrome\en-GB\locale\en-GB\messenger\messenger.properties

%lecho% "account-action-add-movemail-account =" >> localization\en-GB\messenger\accountManager.ftl
%lecho% "    .label = Add Movemail Account…"    >> localization\en-GB\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                    >> localization\en-GB\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="           >> localization\en-GB\messenger\menubar.ftl
%lecho% "    .label = Movemail Account…"        >> localization\en-GB\messenger\menubar.ftl
%lecho% "    .accesskey = M"                    >> localization\en-GB\messenger\menubar.ftl

%lecho% "unreadMsgStatus=Unread: %%S"           >> chrome\en-GB\locale\en-GB\messenger\messenger.properties
%lecho% "selectedMsgStatus=Selected: %%S"       >> chrome\en-GB\locale\en-GB\messenger\messenger.properties
%lecho% "totalMsgStatus=Total: %%S"             >> chrome\en-GB\locale\en-GB\messenger\messenger.properties

%lecho% "vertical-tabs-label ="                 >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .label = Show tab bar vertically"  >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                    >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="       >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .label = Display attachment list above message" >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"                    >> localization\en-GB\messenger\preferences\preferences.ftl

%lecho% "restore-tabs-session-label ="          >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .value = Restore tabs on startup:" >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                    >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .label = All tabs"                 >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = t"                    >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                 >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .label = System tabs"              >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                    >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                     >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .label = None"                     >> localization\en-GB\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = n"                    >> localization\en-GB\messenger\preferences\preferences.ftl

%lecho% "menu-view-layout-widethread =" >> localization\en-GB\messenger\menubar.ftl
%lecho% "    .label = Wide Thread View" >> localization\en-GB\messenger\menubar.ftl
%lecho% "    .accesskey = T"            >> localization\en-GB\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="    >> localization\en-GB\messenger\menubar.ftl
%lecho% "    .label = Stacked View"     >> localization\en-GB\messenger\menubar.ftl
%lecho% "    .accesskey = S"            >> localization\en-GB\messenger\menubar.ftl

%lecho% "other-action-msg-edit-headers ="      >> localization\en-GB\messenger\messenger.ftl
%lecho% "    .label = Edit Headers…"           >> localization\en-GB\messenger\messenger.ftl
%lecho% "    .accesskey = H"                   >> localization\en-GB\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Edit Headers" >> localization\en-GB\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Cancel"      >> localization\en-GB\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Restore"    >> localization\en-GB\messenger\messenger.ftl
%lecho% "    .title = Show the original value" >> localization\en-GB\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Update"      >> localization\en-GB\messenger\messenger.ftl

%lecho% "quick-filter-bar-negate ="                                                                                               >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "    .title = Right-click or Ctrl+Enter on a button negates the result."                                                  >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "      For the text and tag filter, any negated button creates an AND condition."                                         >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "      When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages." >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "      Examples:"                                                                                                         >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "      • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’."                       >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "      • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”." >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "      • [Any of] with [Important] negated and [Work] and [Personal] selected:"                                           >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "      Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag."   >> localization\en-GB\messenger\about3Pane.ftl

:: New in 128:

%lecho% "mail-context-unthread-message ="         >> localization\en-GB\messenger\messenger.ftl
%lecho% "    .label = Unthread Message"           >> localization\en-GB\messenger\messenger.ftl
%lecho% "    .accesskey = U"                      >> localization\en-GB\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="  >> localization\en-GB\messenger\messenger.ftl
%lecho% "    .label = Restore Original Threading" >> localization\en-GB\messenger\messenger.ftl
%lecho% "    .accesskey = R"                      >> localization\en-GB\messenger\messenger.ftl

:: Disable account:
%lecho% "account-disabled ="          >> localization\en-GB\messenger\accountSettings.ftl
%lecho% "  .label = Account disabled" >> localization\en-GB\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
%lecho% "quick-filter-bar-match-addressbook ="                                                               >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "    .label = Match Address Book"                                                                    >> localization\en-GB\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books" >> localization\en-GB\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\en-GB\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\en-GB\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\en-GB\locale\en-GB\messenger\search-attributes.properties

:: New in 140:

%lecho% "menu-view-layout-horizontal =" >> localization\en-GB\messenger\menubar.ftl
%lecho% "    .label = Horizontal View"  >> localization\en-GB\messenger\menubar.ftl
%lecho% "    .accesskey = z"            >> localization\en-GB\messenger\menubar.ftl

%lecho% "<!ENTITY storeOnUpdated.label \"Store updated articles\">" >> chrome\en-GB\locale\en-GB\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome\en-GB\locale\en-GB\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"For Atom or JSON feeds with the "'&lt;updated&gt;'" tag. If the publisher changes the value, store the article instead of treating it as a duplicate.\">" >> chrome\en-GB\locale\en-GB\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Store an archive of the web page with the article\">" >> chrome\en-GB\locale\en-GB\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\en-GB\locale\en-GB\messenger-newsblog\feed-subscriptions.dtd
