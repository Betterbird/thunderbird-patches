:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Lägg till en ny grupp" >> chrome\sv-SE\locale\sv-SE\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Startmapp\">" >> chrome\sv-SE\locale\sv-SE\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="              >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Visa meddelanden utan taggar" >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Visa meddelanden med en eller flera taggar. Högerklicka för att rensa individuella taggval." >> localization\sv-SE\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .label = Aktivera sökning i krypterade meddelanden (lagrar dekrypterad kopia lokalt)" >> localization\sv-SE\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                >> localization\sv-SE\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Senaste fil(er)…"          >> localization\sv-SE\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="        >> localization\sv-SE\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Bifoga den senaste filen…" >> localization\sv-SE\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="          >> localization\sv-SE\messenger\menubar.ftl
%lecho% "    .label = Flerradsvy på alla mappar" >> localization\sv-SE\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .label = Vanlig text eller HTML" >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Om meddelande saknar några stiler, skicka vanlig text. Annars, skicka endast HTML." >> localization\sv-SE\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\sv-SE\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Vanlig text eller HTML"    >> localization\sv-SE\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\sv-SE\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg-edge.mozilla.org/l10n-central/sv-SE/file/33181fded8d77da81eec6d6e9d570b7757537020/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Kan inte öppna buffringsfilen för e-post %%S." >> chrome\sv-SE\locale\sv-SE\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Kan inte skapa låsfil %%S. För att movemail ska fungera, är det nödvändigt att skapa låsfiler i buffringsmappen för e-post. På många system görs det genom att buffringsmappen sätt till läge 01777." >> chrome\sv-SE\locale\sv-SE\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Kan inte ta bort låsfil %%S."                     >> chrome\sv-SE\locale\sv-SE\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Kan inte trunkera buffringsfil %%S."       >> chrome\sv-SE\locale\sv-SE\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Kan inte hitta buffringsfil för e-post."       >> chrome\sv-SE\locale\sv-SE\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Kan inte parsa buffringsfil %%S. Filen kan vara skadad eller ogiltig." >> chrome\sv-SE\locale\sv-SE\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                       >> chrome\sv-SE\locale\sv-SE\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="  >> localization\sv-SE\messenger\accountManager.ftl
%lecho% "    .label = Lägg till Movemail-konto…" >> localization\sv-SE\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                     >> localization\sv-SE\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="            >> localization\sv-SE\messenger\menubar.ftl
%lecho% "    .label = Movemail-konto…"           >> localization\sv-SE\messenger\menubar.ftl
%lecho% "    .accesskey = M"                     >> localization\sv-SE\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Oläst: %%S"  >> chrome\sv-SE\locale\sv-SE\messenger\messenger.properties
%lecho% "selectedMsgStatus=Vald: %%S" >> chrome\sv-SE\locale\sv-SE\messenger\messenger.properties
%lecho% "totalMsgStatus=Totalt: %%S"  >> chrome\sv-SE\locale\sv-SE\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                         >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .label = Visa flikraden vertikalt"         >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                            >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="               >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .label = Visa bilagor ovanför meddelandet" >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = o"                            >> localization\sv-SE\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="             >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .value = Återställ flikar vid start:" >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                       >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .label = Alla flikar"                 >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = A"                       >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                    >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .label = Systemflikar"                >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = S"                       >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                        >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .label = Inga"                        >> localization\sv-SE\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = I"                       >> localization\sv-SE\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread =" >> localization\sv-SE\messenger\menubar.ftl
%lecho% "    .label = Bred trådvy"      >> localization\sv-SE\messenger\menubar.ftl
%lecho% "    .accesskey = B"            >> localization\sv-SE\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="    >> localization\sv-SE\messenger\menubar.ftl
%lecho% "    .label = Staplad vy"       >> localization\sv-SE\messenger\menubar.ftl
%lecho% "    .accesskey = S"            >> localization\sv-SE\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="           >> localization\sv-SE\messenger\messenger.ftl
%lecho% "    .label = Redigera rubriker…"           >> localization\sv-SE\messenger\messenger.ftl
%lecho% "    .accesskey = R"                        >> localization\sv-SE\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Redigera rubriker" >> localization\sv-SE\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Avbryt"           >> localization\sv-SE\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Återställ"       >> localization\sv-SE\messenger\messenger.ftl
%lecho% "    .title = Visa originalvärde"           >> localization\sv-SE\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Uppdatera"        >> localization\sv-SE\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                                                           >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "    .title = Högerklick eller Ctrl+Enter på en knapp vänder om resultatet."                                                          >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "      För text- och taggfiltret skapar varje negerad knapp ett OCH-villkor."                                                         >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "      När taggfiltret är negerat, läggs respektive meddelanden till i listan över otaggade meddelanden genom att välja taggknappen." >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "      Exempel:"                                                                                                                      >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "      • [Stjärnmärkt] och [Taggar] negerade: Visa alla meddelanden som inte är ‘stjärnmärkta’ OCH inte ‘taggade’."                   >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "      • [Ämne] negerad och [Meddelandetext] vald: Visa alla meddelanden där ‘Ämne’ inte innehåller “ord” OCH ‘Meddelandetext’ innehåller “ord”." >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "      • [Någon av] med [Viktigt] negerad och [Arbete] och [Personligt] valda:"                                                       >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "      Visar alla taggade meddelanden som inte har taggen ‘Viktigt’ OCH som har taggen ‘Arbete’ ELLER ‘Personligt’."                  >> localization\sv-SE\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="               >> localization\sv-SE\messenger\messenger.ftl
%lecho% "    .label = Ta bort meddelande från tråden"   >> localization\sv-SE\messenger\messenger.ftl
%lecho% "    .accesskey = T"                            >> localization\sv-SE\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="        >> localization\sv-SE\messenger\messenger.ftl
%lecho% "    .label = Återställ den ursprunglia tråden" >> localization\sv-SE\messenger\messenger.ftl
%lecho% "    .accesskey = Å"                            >> localization\sv-SE\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="           >> localization\sv-SE\messenger\accountSettings.ftl
%lecho% "  .label = Konto inaktiverat" >> localization\sv-SE\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook =" >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "    .label = Matcha adressboken"      >> localization\sv-SE\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Matcha på visningsnamn (börjar med) eller smeknamn (exakt) från dina adressböcker" >> localization\sv-SE\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\sv-SE\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\sv-SE\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\sv-SE\locale\sv-SE\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal =" >> localization\sv-SE\messenger\menubar.ftl
%lecho% "    .label = Horizontal View"  >> localization\sv-SE\messenger\menubar.ftl
%lecho% "    .accesskey = z"            >> localization\sv-SE\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"Store updated articles\">" >> chrome\sv-SE\locale\sv-SE\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome\sv-SE\locale\sv-SE\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"For Atom or JSON feeds with the "'&lt;updated&gt;'" tag. If the publisher changes the value, store the article instead of treating it as a duplicate.\">" >> chrome\sv-SE\locale\sv-SE\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Store an archive of the web page with the article\">" >> chrome\sv-SE\locale\sv-SE\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\sv-SE\locale\sv-SE\messenger-newsblog\feed-subscriptions.dtd
