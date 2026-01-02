:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome\pt-PT\locale\pt-PT\messenger\appstrings.properties

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Adicionar um novo grupo" >> chrome\pt-PT\locale\pt-PT\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Pasta de arranque\">" >> chrome\pt-PT\locale\pt-PT\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="                 >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostrar mensagens sem etiquetas" >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                   >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostrar mensagens com uma ou mais etiquetas. Faça clique direito para limpar a selecção individual de etiquetas." >> localization\pt-PT\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .label = Activar procura em mensagens encriptadas (armazena cópia desencriptada localmente)" >> localization\pt-PT\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                 >> localization\pt-PT\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Ficheiros recentes…"        >> localization\pt-PT\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="         >> localization\pt-PT\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Anexar ficheiros recentes…" >> localization\pt-PT\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                    >> localization\pt-PT\messenger\menubar.ftl
%lecho% "    .label = Vista multilinha em todas as pastas" >> localization\pt-PT\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .label = Texto simples ou HTML"  >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Se não for usado estilo na mensagem, é enviada em texto simples. Senão, é enviada só em HTML." >> localization\pt-PT\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\pt-PT\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Texto simples ou HTML"     >> localization\pt-PT\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\pt-PT\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/pt-PT/file/d540c584ace3454ca4bfe6183953afb00e4f7486/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Não foi possível abrir o ficheiro de spool %%S."       >> chrome\pt-PT\locale\pt-PT\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Não foi possível criar o ficheiro de bloqueio %%S. Para mover o correio, tem que criar os ficheiros no diretório de spool. Em muitos sistemas, a melhor forma de o fazer é aplicar o modo 01777 no diretório." >> chrome\pt-PT\locale\pt-PT\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Não foi possível apagar o ficheiro de bloqueio %%S."      >> chrome\pt-PT\locale\pt-PT\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Não foi possível truncar o ficheiro de spool %%S." >> chrome\pt-PT\locale\pt-PT\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Não foi possível localizar o ficheiro de spool."       >> chrome\pt-PT\locale\pt-PT\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Não foi possível processar o ficheiro de spool %%S. O ficheiro pode estar danificado ou inválido." >> chrome\pt-PT\locale\pt-PT\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                               >> chrome\pt-PT\locale\pt-PT\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="  >> localization\pt-PT\messenger\accountManager.ftl
%lecho% "    .label = Adicionar conta Movemail…" >> localization\pt-PT\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                     >> localization\pt-PT\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="            >> localization\pt-PT\messenger\menubar.ftl
%lecho% "    .label = Conta Movemail…"           >> localization\pt-PT\messenger\menubar.ftl
%lecho% "    .accesskey = M"                     >> localization\pt-PT\messenger\menubar.ftl

:: Unread/seleted status
:: https://hg.mozilla.org/l10n-central/pt-PT/file/d540c584ace3454ca4bfe6183953afb00e4f7486/mail/chrome/messenger/messenger.properties#l169
%lecho% "unreadMsgStatus=Não lidas: %%S"      >> chrome\pt-PT\locale\pt-PT\messenger\messenger.properties
%lecho% "selectedMsgStatus=Selecionadas: %%S" >> chrome\pt-PT\locale\pt-PT\messenger\messenger.properties
%lecho% "totalMsgStatus=Total: %%S"           >> chrome\pt-PT\locale\pt-PT\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                                   >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostrar barra de separadores verticalmente" >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                                      >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                         >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostrar lista de anexos acima da mensagem"  >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"                                      >> localization\pt-PT\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                  >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .value = Restaurar separadores no início:" >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                            >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .label = Todos os separadores"             >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = t"                            >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                         >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .label = Separadores do sistema"           >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                            >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                             >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .label = Nenhum"                           >> localization\pt-PT\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = n"                            >> localization\pt-PT\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="    >> localization\pt-PT\messenger\menubar.ftl
%lecho% "    .label = Largo nas mensagens" >> localization\pt-PT\messenger\menubar.ftl
%lecho% "    .accesskey = T"               >> localization\pt-PT\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="       >> localization\pt-PT\messenger\menubar.ftl
%lecho% "    .label = Empilhado"           >> localization\pt-PT\messenger\menubar.ftl
%lecho% "    .accesskey = S"               >> localization\pt-PT\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="           >> localization\pt-PT\messenger\messenger.ftl
%lecho% "    .label = Editar cabeçalhos…"           >> localization\pt-PT\messenger\messenger.ftl
%lecho% "    .accesskey = H"                        >> localization\pt-PT\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Editar cabeçalhos" >> localization\pt-PT\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Cancelar"         >> localization\pt-PT\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Restaurar"       >> localization\pt-PT\messenger\messenger.ftl
%lecho% "    .title = Mostrar o valor original"     >> localization\pt-PT\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Actualizar"       >> localization\pt-PT\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                            >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "    .title = Clique direito ou Ctrl+Enter num botão nega o resultado."                >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "      Para o filtro de texto e etiquetas, qualquer botão negado cria uma condição E." >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "      Quando o filtro de etiquetas está negado, selecionar um botão de etiqueta adiciona as mensagens respectiva à lista de mensagens não etiquetadas." >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "      Exemplos:"                                                                      >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "      • [Com estrela] e [Etiquetas] negados: mostra todas as mensagens sem estrelas E sem etiquetas." >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "      • [Assunto] negado e [Corpo] selecionados: mostra todas as mensagens onde “Assunto” não contém “palavra” E “Corpo” contém “palavra”." >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "      • [Qualquer de] com [Importante] negados e [Trabalho] e [Pessoal] selecionado:" >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "      Mostrar todas as mensagens etiquetadas que não têm a etiqueta “Importante” E têm a etiqueta “Trabalho“ OU “Pessoal”." >> localization\pt-PT\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="        >> localization\pt-PT\messenger\messenger.ftl
%lecho% "    .label = Remover mensagem da meada" >> localization\pt-PT\messenger\messenger.ftl
%lecho% "    .accesskey = U"                     >> localization\pt-PT\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading =" >> localization\pt-PT\messenger\messenger.ftl
%lecho% "    .label = Restaurar meada original"  >> localization\pt-PT\messenger\messenger.ftl
%lecho% "    .accesskey = R"                     >> localization\pt-PT\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="           >> localization\pt-PT\messenger\accountSettings.ftl
%lecho% "  .label = Conta desactivada" >> localization\pt-PT\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="                                                                         >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "    .label = Comparar com o livro de endereços"                                                               >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Comparar com o nome exibido (começa com) ou alcunha (exacta) nos seus livros de endereços" >> localization\pt-PT\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\pt-PT\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\pt-PT\messenger\preferences\preferences.ftl

%lecho% "Expires=Expira" >> chrome\pt-PT\locale\pt-PT\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal =" >> localization\pt-PT\messenger\menubar.ftl
%lecho% "    .label = Vista horizontal" >> localization\pt-PT\messenger\menubar.ftl
%lecho% "    .accesskey = z"            >> localization\pt-PT\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"Armazenar artigos actualizados\">" >> chrome\pt-PT\locale\pt-PT\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                          >> chrome\pt-PT\locale\pt-PT\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"Para feeds Atom ou JSON com a etiqueta "'&lt;updated&gt;'". Se o editor alterar o valor, armazena o artigo, em vez de o tratar como duplicado.\">" >> chrome\pt-PT\locale\pt-PT\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Armazena um arquivo da página web com o artigo\">" >> chrome\pt-PT\locale\pt-PT\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\pt-PT\locale\pt-PT\messenger-newsblog\feed-subscriptions.dtd

:: Original strings:
:: run-filters-on-incoming-msgs =
::   .label = Run filters on incoming messages
%lecho% "run-filters-on-incoming-msgs ="                    >> localization\pt-PT\messenger\folderprops.ftl
%lecho% "  .label = Executar filtros em mensagens chegadas" >> localization\pt-PT\messenger\folderprops.ftl

:: Original strings:
:: carddav-directory-sync-warning =
::    CardDAV: Some data was dropped by the server, please check the Error Console for details
::carddav-directory-sync-failed =
::    CardDAV: Synchronisation with the server failed, please check the Error Console for details
%lecho% "carddav-directory-sync-warning =" >> localization\pt-PT\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: alguns dados foram descartados pelo servidor, por favor, veja a consola de erros para mais detalhes" >> localization\pt-PT\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "carddav-directory-sync-failed =" >> localization\pt-PT\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: falha ao sincronizar com o servidor, por favor, veja a consola de erros para mais detalhes" >> localization\pt-PT\messenger\addressbook\abCardDAVProperties.ftl

:: Strings for bug 1972710:
:: folder-pane-context-reset-sort =
::   .label = Reset Folder Order
::   .accesskey = R
%lecho% "folder-pane-context-reset-sort ="    >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "  .label = Repor a ordem das pastas" >> localization\pt-PT\messenger\about3Pane.ftl
%lecho% "  .accesskey = R"                    >> localization\pt-PT\messenger\about3Pane.ftl

:: Strings for searching all mail accounts:
:: search-all-mail-accounts =
::   .label = Search all mail accounts
::   .accesskey = m
%lecho% "search-all-mail-accounts ="                        >> localization\pt-PT\messenger\messenger.ftl
%lecho% "  .label = Procurar em todas as contas de correio" >> localization\pt-PT\messenger\messenger.ftl
%lecho% "  .accesskey = m"                                  >> localization\pt-PT\messenger\messenger.ftl

:: New Gloda facets:
:: gloda.message.attr._subjectMatches.facetNameLabel=Subject
:: gloda.message.attr._bodyMatches.facetNameLabel=Body
%lecho% "gloda.message.attr._subjectMatches.facetNameLabel=Assunto" >> chrome\pt-PT\locale\pt-PT\messenger\gloda.properties
%lecho% "gloda.message.attr._bodyMatches.facetNameLabel=Corpo"      >> chrome\pt-PT\locale\pt-PT\messenger\gloda.properties
