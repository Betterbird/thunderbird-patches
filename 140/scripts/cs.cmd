:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"

:: Script will only work if Windows system locale is set to UTF-8 !!

:: Fix a bad translation
sed -i -e 's/label = Organisator/label = Organizátor/' localization\cs\messenger\messenger.ftl

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
%lecho% "    .label = Povolit vyhledávání v zašifrovaných zprávách (dešifrovaná kopie se ukládá lokálně)" >> localization\cs\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                  >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Nedávné soubory…"            >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="          >> localization\cs\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Připojit nedávné soubor(y)…" >> localization\cs\messenger\messengercompose\messengercompose.ftl

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
%lecho% "compose-send-plain-or-html-option ="    >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Prostý text nebo HTML"     >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Pokud není ve zprávě použit žádný styl, odešle se jako prostý text. V opačném případě se odešle pouze HTML." >> localization\cs\messenger\preferences\preferences.ftl

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
%lecho% "    .label = Zobrazení záložek na výšku"           >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                                >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                   >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Zobrazení seznamu příloh nad zprávou" >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"                                >> localization\cs\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="            >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .value = Obnovit záložky po startu:" >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                      >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Všechny záložky"            >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                      >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                   >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Systémové záložky"          >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                      >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                       >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .label = Žádné"                      >> localization\cs\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = z"                      >> localization\cs\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="       >> localization\cs\messenger\menubar.ftl
%lecho% "    .label = Široký pohled s vlákny" >> localization\cs\messenger\menubar.ftl
%lecho% "    .accesskey = v"                  >> localization\cs\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="          >> localization\cs\messenger\menubar.ftl
%lecho% "    .label = Skládaný pohled"        >> localization\cs\messenger\menubar.ftl
%lecho% "    .accesskey = s"                  >> localization\cs\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="         >> localization\cs\messenger\messenger.ftl
%lecho% "    .label = Upravit záhlaví…"           >> localization\cs\messenger\messenger.ftl
%lecho% "    .accesskey = z"                      >> localization\cs\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Upravit záhlaví" >> localization\cs\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Zrušit"         >> localization\cs\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Obnovit"       >> localization\cs\messenger\messenger.ftl
%lecho% "    .title = Ukázat původní hodnotu"     >> localization\cs\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Aktualizovat"   >> localization\cs\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                                                        >> localization\cs\messenger\about3Pane.ftl
%lecho% "    .title = Klepnutím pravým tlačítkem nebo Ctrl+Enter na tlačítku výsledek neguje."                                             >> localization\cs\messenger\about3Pane.ftl
%lecho% "      Pro textový a štítkový filtr vytvoří každé negované tlačítko podmínku AND."                                                 >> localization\cs\messenger\about3Pane.ftl
%lecho% "      Když je filtr štítků negován, výběr tlačítka štítku přidá příslušné zprávy do seznamu neoznačených zpráv."                  >> localization\cs\messenger\about3Pane.ftl
%lecho% "      Příklady:"                                                                                                                  >> localization\cs\messenger\about3Pane.ftl
%lecho% "      • negace [Označené hvězdičkou] a [Značky]: Zobrazit všechny zprávy, které nejsou označeny hvězdičkou A nejsou tagovány."    >> localization\cs\messenger\about3Pane.ftl
%lecho% "      • [Předmět] negován a [Tělo] vybráno: Zobrazit všechny zprávy, kde ‘Předmět’ neobsahuje „slovo“ A ‘Tělo’ obsahuje „slovo“." >> localization\cs\messenger\about3Pane.ftl
%lecho% "      • negace [Kterýkoli] z [Důležité] a vybráno [Práce] a [Osobní]:"                                                            >> localization\cs\messenger\about3Pane.ftl
%lecho% "      Zobrazit všechny označené zprávy, které nemají štítek ‘Důležité’ A současně které mají štítek ‘Práce’ NEBO ‘Osobní’."       >> localization\cs\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="             >> localization\cs\messenger\messenger.ftl
%lecho% "    .label = Odebrat zprávu z vlákna"        >> localization\cs\messenger\messenger.ftl
%lecho% "    .accesskey = z"                          >> localization\cs\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="      >> localization\cs\messenger\messenger.ftl
%lecho% "    .label = Obnovit původní třízení vláken" >> localization\cs\messenger\messenger.ftl
%lecho% "    .accesskey = o"                          >> localization\cs\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="      >> localization\cs\messenger\accountSettings.ftl
%lecho% "  .label = Účet zakázán" >> localization\cs\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="                                                                        >> localization\cs\messenger\about3Pane.ftl
%lecho% "    .label = Najít v adresáři"                                                                               >> localization\cs\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Najít shody dle zobrazovaného jména (začíná na) nebo přezdívky (přesný název) z adresářů" >> localization\cs\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\cs\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\cs\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\cs\locale\cs\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal ="    >> localization\cs\messenger\menubar.ftl
%lecho% "    .label = Horizontální pohled" >> localization\cs\messenger\menubar.ftl
%lecho% "    .accesskey = z"               >> localization\cs\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"Uložit aktualizované články\">" >> chrome\cs\locale\cs\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                       >> chrome\cs\locale\cs\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"Pro kanály Atom nebo JSON s tagem "'&lt;updated&gt;'". Pokud vydavatel změní hodnotu, článek se uloží, aby nebyl považován za duplicitní.\">" >> chrome\cs\locale\cs\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Uložit archiv webové stránky spolu s článkem\">" >> chrome\cs\locale\cs\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\cs\locale\cs\messenger-newsblog\feed-subscriptions.dtd

:: Original strings:
:: run-filters-on-incoming-msgs =
::   .label = Run filters on incoming messages
%lecho% "run-filters-on-incoming-msgs ="                   >> localization\cs\messenger\folderprops.ftl
%lecho% "  .label = Spustit filtry na příchozích zprávách" >> localization\cs\messenger\folderprops.ftl
