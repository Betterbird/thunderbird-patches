:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Shtoni një grup të ri" >> chrome\sq\locale\sq\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Dosje Nisjeje\">" >> chrome\sq\locale\sq\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Shfaqi mesazhet pa etiketa\">" >> chrome\sq\locale\sq\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Shfaqini mesazhet me një ose më shumë etiketa. Djathtasklikoni, për të spastruar përzgjedhjen individuale të etiketave.\">" >> chrome\sq\locale\sq\messenger\quickFilterBar.dtd

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
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Shfaqje Me Shumë Rreshta Në Krejt Dosjet\">" >> chrome\sq\locale\sq\messenger\messenger.dtd

:: Original strings:
:: mail-multiline-all-folders =
::     .label = Multi-line View On All Folders
:: mail-multiline-individual-folders =
::     .label = Multi-line View Via Subject Column
:: mail-multiline-no-folders =
::     .label = No Multi-line View
%lecho% "mail-multiline-all-folders ="                                        >> localization\sq\messenger\menubar.ftl
%lecho% "    .label = Shfaqje Me Shumë Rreshta Në Krejt Dosjet"               >> localization\sq\messenger\menubar.ftl
%lecho% "mail-multiline-individual-folders ="                                 >> localization\sq\messenger\menubar.ftl
%lecho% "    .label = Shfaqje Me Shumë Rreshta Përmes Shtyllës Së Subjekteve" >> localization\sq\messenger\menubar.ftl
%lecho% "mail-multiline-no-folders ="                                         >> localization\sq\messenger\menubar.ftl
%lecho% "    .label = Pa Shfaqje Me Shumë Rreshta"                            >> localization\sq\messenger\menubar.ftl

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
%lecho% "movemailCantOpenSpoolFile=S’arrihet të hapet kartelë “mail spool” %S." >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=S’arrihet të krijohet kartelë kyçjeje %S. Që të mund të punojë “movemail”, lypset të krijohen kartela kyçjesh në drejtorinë “mail spool”. Në mjaft sisteme, kjo arrihet më mirë duke e bërë drejtorinë “mail spool” të jetë nën lejet 01777." >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=S’arrihet të fshihet kartelë kyçjeje %S."       >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=S’arrihet të cungohet kartelë “mail spool” %S." >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=S’arrihet të gjendet kartelë “mail spool”."  >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=S’arrihet të përtypet kartelë “mail spool” %S. Kartela mund të jetë e dëmtuar ose e pavlefshme." >> chrome\sq\locale\sq\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                     >> chrome\sq\locale\sq\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="     >> localization\sq\messenger\accountManager.ftl
%lecho% "    .label = Shtoni një llogari Movemail…" >> localization\sq\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                        >> localization\sq\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="               >> localization\sq\messenger\menubar.ftl
%lecho% "    .label = Llogari Movemail…"            >> localization\sq\messenger\menubar.ftl
%lecho% "    .accesskey = M"                        >> localization\sq\messenger\menubar.ftl
