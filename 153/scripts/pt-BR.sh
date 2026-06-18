# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/pt-BR/locale/pt-BR/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Adicionar um novo grupo" >> chrome/pt-BR/locale/pt-BR/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Pasta de inicialização\">" >> chrome/pt-BR/locale/pt-BR/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="                 >> localization/pt-BR/messenger/about3Pane.ftl
echo "    .tooltiptext = Mostrar mensagens sem etiquetas" >> localization/pt-BR/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                   >> localization/pt-BR/messenger/about3Pane.ftl
echo "    .tooltiptext = Mostrar mensagens com uma ou mais etiquetas. Clique com o botão direito do mouse para limpar a seleção de etiquetas individuais." >> localization/pt-BR/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .label = Habilitar a busca em mensagens criptografadas (armazena uma cópia descriptografada localmente)" >> localization/pt-BR/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="             >> localization/pt-BR/messenger/messengercompose/messengercompose.ftl
echo "    .label = Arquivo(s) recente(s)…" >> localization/pt-BR/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="     >> localization/pt-BR/messenger/messengercompose/messengercompose.ftl
echo "    .label = Anexar arquivo(s) recente(s)…" >> localization/pt-BR/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                    >> localization/pt-BR/messenger/menubar.ftl
echo "    .label = Visão multilinha em todas as pastas" >> localization/pt-BR/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option ="       >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .label = Texto simples ou HTML"        >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Se nenhuma formatação for usada na mensagem, enviar texto simples. Caso contrário, enviar somente HTML." >> localization/pt-BR/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/pt-BR/messenger/messengercompose/messengercompose.ftl
echo "    .label = Texto simples ou HTML"     >> localization/pt-BR/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = o"                     >> localization/pt-BR/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/pt-BR/file/5ad8709a37c8f82389ad95a7fb00b65f641433ad/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Não foi possível abrir o arquivo de spool de emails %S."  >> chrome/pt-BR/locale/pt-BR/messenger/localMsgs.properties
echo "movemailCantCreateLock=Não foi possível criar o arquivo de bloqueio %S. Para o movemail funcionar, é necessário criar arquivos de bloqueio no diretório de spool de emails. Em muitos sistemas, a melhor forma de resolver isso é colocar o diretório de spool no modo 01777." >> chrome/pt-BR/locale/pt-BR/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Não foi possível apagar o arquivo de bloqueio %S."           >> chrome/pt-BR/locale/pt-BR/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Não foi possível truncar o arquivo de spool %S."      >> chrome/pt-BR/locale/pt-BR/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Não foi possível encontrar o arquivo de spool de emails."  >> chrome/pt-BR/locale/pt-BR/messenger/localMsgs.properties
echo "movemailCantParseSpool=Não foi possível processar o arquivo spool de emails %S. O arquivo pode estar corrompido ou não ser válido." >> chrome/pt-BR/locale/pt-BR/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                                   >> chrome/pt-BR/locale/pt-BR/messenger/messenger.properties

echo "account-action-add-movemail-account ="     >> localization/pt-BR/messenger/accountManager.ftl
echo "    .label = Adicionar conta de Movemail…" >> localization/pt-BR/messenger/accountManager.ftl
echo "    .accesskey = M"                        >> localization/pt-BR/messenger/accountManager.ftl
echo "file-new-movemail-account ="               >> localization/pt-BR/messenger/menubar.ftl
echo "    .label = Conta de Movemail…"           >> localization/pt-BR/messenger/menubar.ftl
echo "    .accesskey = M"                        >> localization/pt-BR/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Não lidas: %S"      >> chrome/pt-BR/locale/pt-BR/messenger/messenger.properties
echo "selectedMsgStatus=Selecionadas: %S" >> chrome/pt-BR/locale/pt-BR/messenger/messenger.properties
echo "totalMsgStatus=Total: %S"           >> chrome/pt-BR/locale/pt-BR/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                    >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .label = Mostrar barra de guias verticalmente" >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                       >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="          >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .label = Mostrar anexos acima da mensagem" >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .accesskey = i"                       >> localization/pt-BR/messenger/preferences/preferences.ftl

# Original strings:
# restore-tabs-session-label =
#     .value = Restore tabs on startup:
# restore-all-tabs =
#     .label = All tabs
#     .accesskey = t
# restore-system-tabs =
#     .label = System tabs
#     .accesskey = s
# restore-no-tabs =
#     .label = None
#     .accesskey = n
echo "restore-tabs-session-label ="             >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .value = Restaurar guias ao iniciar:" >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                       >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .label = Todas as guias"              >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .accesskey = T"                       >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                    >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .label = Guias do sistema"            >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .accesskey = s"                       >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                        >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .label = Nenhuma"                     >> localization/pt-BR/messenger/preferences/preferences.ftl
echo "    .accesskey = N"                       >> localization/pt-BR/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread ="         >> localization/pt-BR/messenger/menubar.ftl
echo "    .label = Largo nas mensagens"      >> localization/pt-BR/messenger/menubar.ftl
echo "    .accesskey = a"                    >> localization/pt-BR/messenger/menubar.ftl
echo "menu-view-layout-stacked ="            >> localization/pt-BR/messenger/menubar.ftl
echo "    .label = Empilhado"                >> localization/pt-BR/messenger/menubar.ftl
echo "    .accesskey = E"                    >> localization/pt-BR/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="            >> localization/pt-BR/messenger/messenger.ftl
echo "    .label = Editar cabeçalhos…"            >> localization/pt-BR/messenger/messenger.ftl
echo "    .accesskey = C"                         >> localization/pt-BR/messenger/messenger.ftl
echo "msg-edit-dialog-title = Editar cabeçalhos"  >> localization/pt-BR/messenger/messenger.ftl
echo "msg-edit-cancel-button = Cancelar"          >> localization/pt-BR/messenger/messenger.ftl
echo "msg-edit-restore-button = Restaurar"        >> localization/pt-BR/messenger/messenger.ftl
echo "    .title = Mostrar valor original"        >> localization/pt-BR/messenger/messenger.ftl
echo "msg-edit-update-button = Atualizar"         >> localization/pt-BR/messenger/messenger.ftl

# Original strings:
# quick-filter-bar-negate =
#     .title = Right-click or Ctrl+Enter on a button negates the result.
#       For the text and tag filter, any negated button creates an AND condition.
#       When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages.
#       Examples:
#       • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’.
#       • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”.
#       • [Any of] with [Important] negated and [Work] and [Personal] selected:
#       Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag.
echo "quick-filter-bar-negate ="                                                                                               >> localization/pt-BR/messenger/about3Pane.ftl
echo "    .title = Clicar com o botão direito do mouse ou pressionar Ctrl+Enter em um botão nega o resultado."                 >> localization/pt-BR/messenger/about3Pane.ftl
echo "      Para o filtro de texto e de etiquetas, qualquer botão negado cria uma condição E."                                 >> localization/pt-BR/messenger/about3Pane.ftl
echo "      Quando o filtro de etiquetas é negado, a seleção de um botão de etiqueta adiciona as respectivas mensagens."       >> localization/pt-BR/messenger/about3Pane.ftl
echo "      Exemplos:"                                                                                                         >> localization/pt-BR/messenger/about3Pane.ftl
echo "      • [Com estrela] e [Etiquetas] negados: Mensagens que Não são ‘Com estrela’ E Não ‘Etiquetadas’."                   >> localization/pt-BR/messenger/about3Pane.ftl
echo "      • [Assunto] negado e [Texto da mensagem] selecionado: Mensagens em que ‘Assunto’ Não Contém “palavra” E ‘Texto da mensagem’ Contém “palavra”." >> localization/pt-BR/messenger/about3Pane.ftl
echo "      • [Qualquer] com [Importante] negado e, [Trabalho] e [Particular] selecionado:"                                    >> localization/pt-BR/messenger/about3Pane.ftl
echo "      Mensagens etiquetadas que Não possuem a etiqueta ‘Importante’ E que têm a etiqueta ‘Trabalho’ OU ‘Particular’."    >> localization/pt-BR/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="        >> localization/pt-BR/messenger/messenger.ftl
echo "    .label = Desagrupar do tópico"      >> localization/pt-BR/messenger/messenger.ftl
echo "    .accesskey = D"                     >> localization/pt-BR/messenger/messenger.ftl
echo "mail-context-reset-message-threading =" >> localization/pt-BR/messenger/messenger.ftl
echo "    .label = Restaurar tópico original" >> localization/pt-BR/messenger/messenger.ftl
echo "    .accesskey = R"                     >> localization/pt-BR/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="          >> localization/pt-BR/messenger/accountSettings.ftl
echo "  .label = Conta desativada" >> localization/pt-BR/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="                                                                                  >> localization/pt-BR/messenger/about3Pane.ftl
echo "    .label = Corresponder com o catálogo de endereços"                                                                 >> localization/pt-BR/messenger/about3Pane.ftl
echo "    .tooltiptext = Corresponder com o nome de exibição (começa com) ou apelido (exato) do seus catálogos de endereços" >> localization/pt-BR/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/pt-BR/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/pt-BR/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/pt-BR/locale/pt-BR/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal =" >> localization/pt-BR/messenger/menubar.ftl
echo "    .label = Horizontal"       >> localization/pt-BR/messenger/menubar.ftl
echo "    .accesskey = z"            >> localization/pt-BR/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Armazenar artigos atualizados\">" >> chrome/pt-BR/locale/pt-BR/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome/pt-BR/locale/pt-BR/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"Para canais de informações Atom ou JSON com a tag &lt;updated&gt;. Se o editor alterar o valor, armazena o artigo em vez de tratá-lo como duplicado.\">" >> chrome/pt-BR/locale/pt-BR/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Armazenar um arquivo da página web com o artigo\">" >> chrome/pt-BR/locale/pt-BR/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/pt-BR/locale/pt-BR/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                      >> localization/pt-BR/messenger/folderprops.ftl
echo "  .label = Executar filtros nas mensagens recebidas" >> localization/pt-BR/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/pt-BR/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Alguns dados foram descartados pelo servidor, por favor verifique a Consola de Erros para mais detalhes" >> localization/pt-BR/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/pt-BR/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Falha na sincronização com o servidor, por favor verifique a Consola de Erros para mais detalhes" >> localization/pt-BR/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort ="     >> localization/pt-BR/messenger/about3Pane.ftl
echo "  .label = Redefinir ordem de pastas" >> localization/pt-BR/messenger/about3Pane.ftl
echo "  .accesskey = R"                     >> localization/pt-BR/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts ="                        >> localization/pt-BR/messenger/messenger.ftl
echo "  .label = Pesquisar em todas as contas de e-mail" >> localization/pt-BR/messenger/messenger.ftl
echo "  .accesskey = c"                                  >> localization/pt-BR/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=Assunto"        >> chrome/pt-BR/locale/pt-BR/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Texto da mensagem" >> chrome/pt-BR/locale/pt-BR/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = Categorias" >> localization/pt-BR/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Categorias" >> localization/pt-BR/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Ordenar por categorias"                        >> localization/pt-BR/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="             >> localization/pt-BR/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Categorias"                                    >> localization/pt-BR/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                     >> localization/pt-BR/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Categorias"                               >> localization/pt-BR/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                   >> localization/pt-BR/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Categorias"                     >> localization/pt-BR/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Adicionar categoria"                 >> localization/pt-BR/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Categoria"                   >> localization/pt-BR/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Nome da categoria"           >> localization/pt-BR/messenger/addressbook/vcard.ftl
echo "Categories=Categorias" >> chrome/pt-BR/locale/pt-BR/messenger/search-attributes.properties
