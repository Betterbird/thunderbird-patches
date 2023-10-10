:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

%lecho% "groupButtonTooltipText=Přidat novou skupinu" >> chrome\cs-CZ\locale\cs-CZ\messenger\search.properties

%lecho% "<!ENTITY folderContextStartupFolder.label \"Výchozí složka\">" >> chrome\cs-CZ\locale\cs-CZ\messenger\messenger.dtd

%lecho% "quick-filter-bar-untagged-button ="            >> localization\cs-CZ\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Zobrazit zprávy bez značek" >> localization\cs-CZ\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="              >> localization\cs-CZ\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Zobrazit zprávy s jednou nebo více značkami. Kliknutím pravým tlačítkem myši zrušíte výběr jednotlivých značek." >> localization\cs-CZ\messenger\about3Pane.ftl

%lecho% "enable-gloda-search-encrypted-label =" >> localization\cs-CZ\messenger\preferences\preferences.ftl
%lecho% "    .label = Povolit vyhledávání v zašifrovaných zprávách (dešifrovanou kopii ukládá lokálně)" >> localization\cs-CZ\messenger\preferences\preferences.ftl

%lecho% "menuitem-recent-files ="             >> localization\cs-CZ\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Nedávné soubory..."        >> localization\cs-CZ\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="     >> localization\cs-CZ\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Připojte poslední soubor(y)..." >> localization\cs-CZ\messenger\messengercompose\messengercompose.ftl

%lecho% "menu-multi-line-all-folders ="               >> localization\cs-CZ\messenger\menubar.ftl
%lecho% "    .label = Víceřádkové zobrazení ve všech složkách" >> localization\cs-CZ\messenger\menubar.ftl

%lecho% "compose-send-plain-or-html-option =" >> localization\cs-CZ\messenger\preferences\preferences.ftl
%lecho% "    .label = Prostý text nebo HTML"     >> localization\cs-CZ\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only." >> localization\cs-CZ\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\cs-CZ\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Prostý text nebo HTML"        >> localization\cs-CZ\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\cs-CZ\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/en-GB/file/eda11f2a3883ce480a79885d5952e4655b5f9eec/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Nelze otevřít soubor spool poštovní schránky %%S."    >> chrome\cs-CZ\locale\cs-CZ\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Nelze vytvořit soubor zámku %%S. Aby mohl movemail fungovat, je nutné vytvořit soubory zámků v adresáři spool poštovního klienta. V mnoha systémech je toho nejlépe dosaženo tak, že adresář spool je v režimu 01777." >> chrome\cs-CZ\locale\cs-CZ\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Nelze odstranit soubor zámku %%S."           >> chrome\cs-CZ\locale\cs-CZ\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Nelze zkrátit soubor spool %%S." >> chrome\cs-CZ\locale\cs-CZ\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Nelze najít soubor spool poštovní schránky."      >> chrome\cs-CZ\locale\cs-CZ\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Nelze analyzovat soubor spool %%S. Soubor může být poškozený nebo neplatný." >> chrome\cs-CZ\locale\cs-CZ\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                >> chrome\cs-CZ\locale\cs-CZ\messenger\messenger.properties

%lecho% "account-action-add-movemail-account =" >> localization\cs-CZ\messenger\accountManager.ftl
%lecho% "    .label = Přidání účtu Movemail..."    >> localization\cs-CZ\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                    >> localization\cs-CZ\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="           >> localization\cs-CZ\messenger\menubar.ftl
%lecho% "    .label = Účet Movemail..."        >> localization\cs-CZ\messenger\menubar.ftl
%lecho% "    .accesskey = M"                    >> localization\cs-CZ\messenger\menubar.ftl

%lecho% "unreadMsgStatus=Nepřečtené: %%S"           >> chrome\cs-CZ\locale\cs-CZ\messenger\messenger.properties
%lecho% "selectedMsgStatus=Vybrané: %%S"       >> chrome\cs-CZ\locale\cs-CZ\messenger\messenger.properties
%lecho% "totalMsgStatus=Celkem: %%S"             >> chrome\cs-CZ\locale\cs-CZ\messenger\messenger.properties

%lecho% "vertical-tabs-label ="                 >> localization\cs-CZ\messenger\preferences\preferences.ftl
%lecho% "    .label = Zobrazení pásu karet na výšku"  >> localization\cs-CZ\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                    >> localization\cs-CZ\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="       >> localization\cs-CZ\messenger\preferences\preferences.ftl
%lecho% "    .label = Zobrazení seznamu příloh nad zprávou" >> localization\cs-CZ\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"                    >> localization\cs-CZ\messenger\preferences\preferences.ftl

:: New string from bug 1823274. The Thunderbird folks where negligent and didn't refresh l10n so it's missing everywhere :-(
%lecho% "context-menu-cancel-msg ="   >> localization\cs-CZ\messenger\messenger.ftl
%lecho% "    .label = Zrušit zprávu" >> localization\cs-CZ\messenger\messenger.ftl

:: New string from bug 1837152. Taken from about3Pane.ftl: folder-pane-get-all-messages-menuitem.label and folder-pane-get-all-messages-menuitem.accesskey
%lecho% "toolbar-get-all-messages-menuitem =" >> localization\cs-CZ\messenger\unifiedToolbar.ftl
%lecho% "  .label = Získat všechny nové zprávy"     >> localization\cs-CZ\messenger\unifiedToolbar.ftl
%lecho% "  .accesskey = G"                    >> localization\cs-CZ\messenger\unifiedToolbar.ftl
