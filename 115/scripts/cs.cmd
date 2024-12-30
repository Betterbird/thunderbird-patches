:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Přidat novou skupinu" >> chrome\cs\locale\cs\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Výchozí složka\">" >> chrome\cs\locale\cs\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="            >> localization\cs\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Zobrazit zprávy bez značek" >> localization\cs\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="              >> localization\cs\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Zobrazit zprávy s jednou nebo více značkami. Kliknutím pravým tlačítkem myši zrušíte výběr jednotlivých značek." >> localization\cs\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Povolit vyhledávání v zašifrovaných zprávách (dešifrovanou kopii ukládá lokálně)" >> localization\cs\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                   >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Nedávné soubory…"             >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="           >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Připojte poslední soubor(y)…" >> localization\cs\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                        >> localization\cs\messenger\menubar.ftl
%lecho% "    .label = Víceřádkové zobrazení ve všech složkách" >> localization\cs\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Prostý text nebo HTML"  >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Pokud není ve zprávě použit žádný styl, odešlete prostý text. V opačném případě odešlete pouze HTML." >> localization\cs\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Prostý text nebo HTML"     >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\cs\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/cs/file/eb8791bb6298abbcd98b015418c950139bab57a1/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Nelze otevřít soubor %%S s příchozí poštou."   >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Nelze vytvořit soubor %%S se zámkem. Aby movemail pracoval, je potřeba v adresáři s příchozí poštou vytvořit soubor se zámkem. Na většině systémech se toho dosáhne nastavením práva na adresář s frontou na hodnotu 01777." >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Nelze smazat soubor %%S se zámkem."               >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Nelze zkrátit soubor %%S s místní poštou." >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Nelze nalézt soubor s místní poštou."          >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Nelze zkrátit soubor %%S s místní poštou. Soubor může být poškozen nebo není platný." >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                       >> chrome\cs\locale\cs\messenger\messenger.properties

%lecho% "account-action-add-movemail-account =" >> localization\cs\messenger\accountManager.ftl
%lecho% "    .label = Přidání účtu Movemail…"   >> localization\cs\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                    >> localization\cs\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="           >> localization\cs\messenger\menubar.ftl
%lecho% "    .label = Účet Movemail…"           >> localization\cs\messenger\menubar.ftl
%lecho% "    .accesskey = M"                    >> localization\cs\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Nepřečtené: %%S" >> chrome\cs\locale\cs\messenger\messenger.properties
%lecho% "selectedMsgStatus=Vybrané: %%S"  >> chrome\cs\locale\cs\messenger\messenger.properties
%lecho% "totalMsgStatus=Celkem: %%S"      >> chrome\cs\locale\cs\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                             >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Zobrazení pásu karet na výšku"        >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                                >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                   >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Zobrazení seznamu příloh nad zprávou" >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"                                >> localization\cs\messenger\preferences\preferences.ftl
