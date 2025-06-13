:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Adicionar um novo grupo" >> chrome\pt-BR\locale\pt-BR\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Pasta de inicialização\">" >> chrome\pt-BR\locale\pt-BR\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="                 >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostrar mensagens sem etiquetas" >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                   >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostrar mensagens com uma ou mais etiquetas. Clique com o botão direito do mouse para limpar a seleção de etiquetas individuais." >> localization\pt-BR\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .label = Habilitar a busca em mensagens criptografadas (armazena uma cópia descriptografada localmente)" >> localization\pt-BR\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="             >> localization\pt-BR\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Arquivo(s) recente(s)…" >> localization\pt-BR\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="     >> localization\pt-BR\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Anexar arquivo(s) recente(s)…" >> localization\pt-BR\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                    >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .label = Visão multilinha em todas as pastas" >> localization\pt-BR\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option ="       >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .label = HTML ou Texto sem formatação" >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Se nenhum estilo for usado na mensagem, envie texto sem formatação. Caso contrário, envie somente HTML." >> localization\pt-BR\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\pt-BR\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = HTML ou texto sem formato" >> localization\pt-BR\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = o"                     >> localization\pt-BR\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/pt-BR/file/5ad8709a37c8f82389ad95a7fb00b65f641433ad/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Não foi possível abrir o arquivo de spool de emails %%S."  >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Não foi possível criar o arquivo de bloqueio %%S. Para o movemail funcionar, é necessário criar arquivos de bloqueio no diretório de spool de emails. Em muitos sistemas, a melhor forma de resolver isso é colocar o diretório de spool no modo 01777." >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Não foi possível apagar o arquivo de bloqueio %%S."           >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Não foi possível truncar o arquivo de spool %%S."      >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Não foi possível encontrar o arquivo de spool de emails."  >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Não foi possível processar o arquivo spool de emails %%S. O arquivo pode estar corrompido ou não ser válido." >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                                   >> chrome\pt-BR\locale\pt-BR\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="     >> localization\pt-BR\messenger\accountManager.ftl
%lecho% "    .label = Adicionar conta de Movemail…" >> localization\pt-BR\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                        >> localization\pt-BR\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="               >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .label = Conta de Movemail…"           >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .accesskey = M"                        >> localization\pt-BR\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Não lidas: %%S"      >> chrome\pt-BR\locale\pt-BR\messenger\messenger.properties
%lecho% "selectedMsgStatus=Selecionadas: %%S" >> chrome\pt-BR\locale\pt-BR\messenger\messenger.properties
%lecho% "totalMsgStatus=Total: %%S"           >> chrome\pt-BR\locale\pt-BR\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                    >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostrar barra de guias verticalmente" >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                       >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="          >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostrar anexos acima da mensagem" >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = i"                       >> localization\pt-BR\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="             >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .value = Restaurar guias ao iniciar:" >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                       >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .label = Todas as guias"              >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = T"                       >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                    >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .label = Guias do sistema"            >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                       >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                        >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .label = Nenhuma"                     >> localization\pt-BR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = N"                       >> localization\pt-BR\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="         >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .label = Largo nas mensagens"      >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .accesskey = a"                    >> localization\pt-BR\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="            >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .label = Empilhado"                >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .accesskey = E"                    >> localization\pt-BR\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="            >> localization\pt-BR\messenger\messenger.ftl
%lecho% "    .label = Editar cabeçalhos…"            >> localization\pt-BR\messenger\messenger.ftl
%lecho% "    .accesskey = C"                         >> localization\pt-BR\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Editar cabeçalhos"  >> localization\pt-BR\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Cancelar"          >> localization\pt-BR\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Restaurar"        >> localization\pt-BR\messenger\messenger.ftl
%lecho% "    .title = Mostrar valor original"        >> localization\pt-BR\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Atualizar"         >> localization\pt-BR\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                                               >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "    .title = Clicar com o botão direito do mouse ou pressionar Ctrl+Enter em um botão nega o resultado."                 >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "      Para o filtro de texto e de etiquetas, qualquer botão negado cria uma condição E."                                 >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "      Quando o filtro de etiquetas é negado, a seleção de um botão de etiqueta adiciona as respectivas mensagens."       >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "      Exemplos:"                                                                                                         >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "      • [Com estrela] e [Etiquetas] negados: Mensagens que Não são ‘Com estrela’ E Não ‘Etiquetadas’."                   >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "      • [Assunto] negado e [Texto da mensagem] selecionado: Mensagens em que ‘Assunto’ Não Contém “palavra” E ‘Texto da mensagem’ Contém “palavra”." >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "      • [Qualquer] com [Importante] negado e, [Trabalho] e [Particular] selecionado:"                                    >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "      Mensagens etiquetadas que Não possuem a etiqueta ‘Importante’ E que têm a etiqueta ‘Trabalho’ OU ‘Particular’."    >> localization\pt-BR\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="        >> localization\pt-BR\messenger\messenger.ftl
%lecho% "    .label = Desagrupar do tópico"      >> localization\pt-BR\messenger\messenger.ftl
%lecho% "    .accesskey = D"                     >> localization\pt-BR\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading =" >> localization\pt-BR\messenger\messenger.ftl
%lecho% "    .label = Restaurar tópico original" >> localization\pt-BR\messenger\messenger.ftl
%lecho% "    .accesskey = R"                     >> localization\pt-BR\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="          >> localization\pt-BR\messenger\accountSettings.ftl
%lecho% "  .label = Conta desativada" >> localization\pt-BR\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="                                                                                  >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "    .label = Corresponder com o catálogo de endereços"                                                                 >> localization\pt-BR\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Corresponder com o nome de exibição (começa com) ou apelido (exato) do seus catálogos de endereços" >> localization\pt-BR\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\pt-BR\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\pt-BR\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\pt-BR\locale\pt-BR\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal =" >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .label = Horizontal"       >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .accesskey = z"            >> localization\pt-BR\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"Armazenar artigos atualizados\">" >> chrome\pt-BR\locale\pt-BR\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome\pt-BR\locale\pt-BR\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"Para feeds Atom ou JSON com a tag "'&lt;updated&gt;'". Se o publicador alterar o valor, o artigo será armazenado em vez de tratado como duplicado.\">" >> chrome\pt-BR\locale\pt-BR\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Armazenar um arquivo da página web com o artigo\">" >> chrome\pt-BR\locale\pt-BR\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\pt-BR\locale\pt-BR\messenger-newsblog\feed-subscriptions.dtd
