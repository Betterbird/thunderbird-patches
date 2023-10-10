:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

%lecho% "groupButtonTooltipText=Přidat novou skupinu" >> chrome\cs\locale\cs\messenger\search.properties

%lecho% "<!ENTITY folderContextStartupFolder.label \"Výchozí složka\">" >> chrome\cs\locale\cs\messenger\messenger.dtd

%lecho% "quick-filter-bar-untagged-button ="            >> localization\cs\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Zobrazit zprávy bez značek" >> localization\cs\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="              >> localization\cs\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Zobrazit zprávy s jednou nebo více značkami. Kliknutím pravým tlačítkem myši zrušíte výběr jednotlivých značek." >> localization\cs\messenger\about3Pane.ftl

%lecho% "enable-gloda-search-encrypted-label =" >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Povolit vyhledávání v zašifrovaných zprávách (dešifrovanou kopii ukládá lokálně)" >> localization\cs\messenger\preferences\preferences.ftl

%lecho% "menuitem-recent-files ="                   >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Nedávné soubory…"             >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="           >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Připojte poslední soubor(y)…" >> localization\cs\messenger\messengercompose\messengercompose.ftl

%lecho% "menu-multi-line-all-folders ="                        >> localization\cs\messenger\menubar.ftl
%lecho% "    .label = Víceřádkové zobrazení ve všech složkách" >> localization\cs\messenger\menubar.ftl

%lecho% "compose-send-plain-or-html-option =" >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Prostý text nebo HTML"  >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Pokud není ve zprávě použit žádný styl, odešlete prostý text. V opačném případě odešlete pouze HTML." >> localization\cs\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Prostý text nebo HTML"     >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\cs\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/en-GB/file/eda11f2a3883ce480a79885d5952e4655b5f9eec/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Nelze otevřít soubor spool poštovní schránky %%S."    >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Nelze vytvořit soubor zámku %%S. Aby mohl movemail fungovat, je nutné vytvořit soubory zámků v adresáři spool poštovního klienta. V mnoha systémech je toho nejlépe dosaženo tak, že adresář spool je v režimu 01777." >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Nelze odstranit soubor zámku %%S."           >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Nelze zkrátit soubor spool %%S." >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Nelze najít soubor spool poštovní schránky."      >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Nelze analyzovat soubor spool %%S. Soubor může být poškozený nebo neplatný." >> chrome\cs\locale\cs\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                >> chrome\cs\locale\cs\messenger\messenger.properties

%lecho% "account-action-add-movemail-account =" >> localization\cs\messenger\accountManager.ftl
%lecho% "    .label = Přidání účtu Movemail…"   >> localization\cs\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                    >> localization\cs\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="           >> localization\cs\messenger\menubar.ftl
%lecho% "    .label = Účet Movemail…"           >> localization\cs\messenger\menubar.ftl
%lecho% "    .accesskey = M"                    >> localization\cs\messenger\menubar.ftl

%lecho% "unreadMsgStatus=Nepřečtené: %%S" >> chrome\cs\locale\cs\messenger\messenger.properties
%lecho% "selectedMsgStatus=Vybrané: %%S"  >> chrome\cs\locale\cs\messenger\messenger.properties
%lecho% "totalMsgStatus=Celkem: %%S"      >> chrome\cs\locale\cs\messenger\messenger.properties

%lecho% "vertical-tabs-label ="                             >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Zobrazení pásu karet na výšku"        >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                                >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                   >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Zobrazení seznamu příloh nad zprávou" >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"                                >> localization\cs\messenger\preferences\preferences.ftl

:: New string from bug 1837152. Taken from about3Pane.ftl: folder-pane-get-all-messages-menuitem.label and folder-pane-get-all-messages-menuitem.accesskey
%lecho% "toolbar-get-all-messages-menuitem ="     >> localization\cs\messenger\unifiedToolbar.ftl
%lecho% "  .label = Přijmout všechny nové zprávy" >> localization\cs\messenger\unifiedToolbar.ftl
%lecho% "  .accesskey = P"                        >> localization\cs\messenger\unifiedToolbar.ftl
