:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Shtoni një grup të ri" >> chrome\sq\locale\sq\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Dosje Nisjeje\">" >> chrome\sq\locale\sq\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="            >> localization\sq\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Shfaqi mesazhet pa etiketa" >> localization\sq\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="              >> localization\sq\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Shfaqini mesazhet me një ose më shumë etiketa. Djathtasklikoni, për të spastruar përzgjedhjen individuale të etiketave." >> localization\sq\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\sq\messenger\preferences\preferences.ftl
%lecho% "    .label = Aktivizoni kërkim në mesazhe të fshehtëzuar (e depoziton lokalisht kopjen e shfshehtëzuar)" >> localization\sq\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="            >> localization\sq\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Kartelë(a) Së Fundi…"  >> localization\sq\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="    >> localization\sq\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Bashkëngjitni Kartelë(a) Së Fundi…" >> localization\sq\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                         >> localization\sq\messenger\menubar.ftl
%lecho% "    .label = Shfaqje Me Shumë Rreshta Në Krejt Dosjet" >> localization\sq\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option ="      >> localization\sq\messenger\preferences\preferences.ftl
%lecho% "    .label = Tekst të Thjeshtë ose HTML"  >> localization\sq\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Nëse në mesazh s’është përdorur stilizim, dërgoje si Tekst të Thjeshtë. Përndryshe, dërgoje vetëm si HTML." >> localization\sq\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item ="  >> localization\sq\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Tekst të Thjeshtë ose HTML" >> localization\sq\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = o"                      >> localization\sq\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/sq/file/1a8b669b9479e2c09a730537d6d10dd400070a33/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=S’arrihet të hapet kartelë “mail spool” %%S." >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=S’arrihet të krijohet kartelë kyçjeje %%S. Që të mund të punojë “movemail”, lypset të krijohen kartela kyçjesh në drejtorinë “mail spool”. Në mjaft sisteme, kjo arrihet më mirë duke e bërë drejtorinë “mail spool” të jetë nën lejet 01777." >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=S’arrihet të fshihet kartelë kyçjeje %%S."       >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=S’arrihet të cungohet kartelë “mail spool” %%S." >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=S’arrihet të gjendet kartelë “mail spool”."   >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=S’arrihet të përtypet kartelë “mail spool” %%S. Kartela mund të jetë e dëmtuar ose e pavlefshme." >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                      >> chrome\sq\locale\sq\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="     >> localization\sq\messenger\accountManager.ftl
%lecho% "    .label = Shtoni një llogari Movemail…" >> localization\sq\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                        >> localization\sq\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="               >> localization\sq\messenger\menubar.ftl
%lecho% "    .label = Llogari Movemail…"            >> localization\sq\messenger\menubar.ftl
%lecho% "    .accesskey = M"                        >> localization\sq\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Të palexuar: %%S"      >> chrome\sq\locale\sq\messenger\messenger.properties
%lecho% "selectedMsgStatus=Të përzgjedhur: %%S" >> chrome\sq\locale\sq\messenger\messenger.properties
%lecho% "totalMsgStatus=Gjithsej: %%S"          >> chrome\sq\locale\sq\messenger\messenger.properties

:: New string from bug 1837152. Taken from about3Pane.ftl: folder-pane-get-all-messages-menuitem.label and folder-pane-get-all-messages-menuitem.accesskey
%lecho% "toolbar-get-all-messages-menuitem =" >> localization\sq\messenger\unifiedToolbar.ftl
%lecho% "  .label = Merri Krejt Mesazhet"     >> localization\sq\messenger\unifiedToolbar.ftl
%lecho% "  .accesskey = M"                    >> localization\sq\messenger\unifiedToolbar.ftl
