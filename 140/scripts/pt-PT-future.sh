# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/pt-PT/locale/pt-PT/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Adicionar um novo grupo" >> chrome/pt-PT/locale/pt-PT/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Pasta de arranque\">" >> chrome/pt-PT/locale/pt-PT/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#      .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#      .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="                  >> localization/pt-PT/messenger/about3Pane.ftl
echo "    .tooltiptext = Mostrar mensagens sem etiquetas" >> localization/pt-PT/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                    >> localization/pt-PT/messenger/about3Pane.ftl
echo "    .tooltiptext = Mostrar mensagens com uma ou mais etiquetas. Clique com o botão direito para limpar a seleção individual de etiquetas." >> localization/pt-PT/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#      .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .label = Ativar procura em mensagens encriptadas (armazena cópia desencriptada localmente)" >> localization/pt-PT/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#      .label = Recent File(s)…
# context-menuitem-recent-files =
#      .label = Attach Recent File(s)…
echo "menuitem-recent-files ="                 >> localization/pt-PT/messenger/messengercompose/messengercompose.ftl
echo "    .label = Ficheiros recentes…"         >> localization/pt-PT/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="          >> localization/pt-PT/messenger/messengercompose/messengercompose.ftl
echo "    .label = Anexar ficheiros recentes…" >> localization/pt-PT/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#      .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                     >> localization/pt-PT/messenger/menubar.ftl
echo "    .label = Múltiplas linhas em todas as pastas" >> localization/pt-PT/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#      .label = Plain Text or HTML
#      .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option =" >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .label = Texto simples ou HTML"  >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Se não for usado estilo na mensagem, é enviada em texto simples. Caso contrário, é enviada apenas em HTML." >> localization/pt-PT/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/pt-PT/messenger/messengercompose/messengercompose.ftl
echo "    .label = Texto simples ou HTML"     >> localization/pt-PT/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = O"                     >> localization/pt-PT/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/pt-PT/file/d540c584ace3454ca4bfe6183953afb00e4f7486/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Não foi possível abrir o ficheiro de depósito %S." >> chrome/pt-PT/locale/pt-PT/messenger/localMsgs.properties
echo "movemailCantCreateLock=Não foi possível criar o ficheiro de bloqueio %S. Para mover o correio, tem de criar os ficheiros no diretório de depósito. Em muitos sistemas, a melhor forma de o fazer é aplicar o modo 01777 no diretório." >> chrome/pt-PT/locale/pt-PT/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Não foi possível eliminar o ficheiro de bloqueio %S." >> chrome/pt-PT/locale/pt-PT/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Não foi possível truncar o ficheiro de depósito %S." >> chrome/pt-PT/locale/pt-PT/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Não foi possível localizar o ficheiro de depósito." >> chrome/pt-PT/locale/pt-PT/messenger/localMsgs.properties
echo "movemailCantParseSpool=Não foi possível processar o ficheiro de depósito %S. O ficheiro pode estar danificado ou ser inválido." >> chrome/pt-PT/locale/pt-PT/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail" >> chrome/pt-PT/locale/pt-PT/messenger/messenger.properties

echo "account-action-add-movemail-account ="  >> localization/pt-PT/messenger/accountManager.ftl
echo "    .label = Adicionar conta Movemail…" >> localization/pt-PT/messenger/accountManager.ftl
echo "    .accesskey = M"                     >> localization/pt-PT/messenger/accountManager.ftl
echo "file-new-movemail-account ="            >> localization/pt-PT/messenger/menubar.ftl
echo "    .label = Conta Movemail…"            >> localization/pt-PT/messenger/menubar.ftl
echo "    .accesskey = M"                     >> localization/pt-PT/messenger/menubar.ftl

# Unread/seleted status
# https://hg.mozilla.org/l10n-central/pt-PT/file/d540c584ace3454ca4bfe6183953afb00e4f7486/mail/chrome/messenger/messenger.properties#l169
echo "unreadMsgStatus=Não lidas: %S"      >> chrome/pt-PT/locale/pt-PT/messenger/messenger.properties
echo "selectedMsgStatus=Selecionadas: %S" >> chrome/pt-PT/locale/pt-PT/messenger/messenger.properties
echo "totalMsgStatus=Total: %S"            >> chrome/pt-PT/locale/pt-PT/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#      .label = Enable vertical tabs
#      .accesskey = v
# attachments-display-top-label =
#      .label = Display attachment list above message
#      .accesskey = p
echo "vertical-tabs-label ="                                    >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .label = Mostrar barra de separadores verticalmente" >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                                      >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="                         >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .label = Mostrar lista de anexos acima da mensagem"  >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .accesskey = p"                                      >> localization/pt-PT/messenger/preferences/preferences.ftl

# Original strings:
# restore-tabs-session-label =
#      .value = Restore tabs on startup:
# restore-all-tabs =
#      .label = All tabs
#      .accesskey = t
# restore-system-tabs =
#      .label = System tabs
#      .accesskey = s
# restore-no-tabs =
#      .label = None
#      .accesskey = n
echo "restore-tabs-session-label ="                  >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .value = Restaurar separadores no início:" >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                            >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .label = Todos os separadores"             >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .accesskey = t"                            >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                         >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .label = Separadores do sistema"           >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .accesskey = s"                            >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                             >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .label = Nenhum"                           >> localization/pt-PT/messenger/preferences/preferences.ftl
echo "    .accesskey = n"                            >> localization/pt-PT/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#      .label = Wide Thread View
#      .accesskey = T
# menu-view-layout-stacked =
#      .label = Stacked View
#      .accesskey = S
echo "menu-view-layout-widethread ="    >> localization/pt-PT/messenger/menubar.ftl
echo "    .label = Largo nas mensagens" >> localization/pt-PT/messenger/menubar.ftl
echo "    .accesskey = T"                >> localization/pt-PT/messenger/menubar.ftl
echo "menu-view-layout-stacked ="       >> localization/pt-PT/messenger/menubar.ftl
echo "    .label = Empilhado"           >> localization/pt-PT/messenger/menubar.ftl
echo "    .accesskey = S"                >> localization/pt-PT/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#      .label = Edit Headers…
#      .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#      .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="            >> localization/pt-PT/messenger/messenger.ftl
echo "    .label = Editar cabeçalhos…"            >> localization/pt-PT/messenger/messenger.ftl
echo "    .accesskey = H"                         >> localization/pt-PT/messenger/messenger.ftl
echo "msg-edit-dialog-title = Editar cabeçalhos" >> localization/pt-PT/messenger/messenger.ftl
echo "msg-edit-cancel-button = Cancelar"          >> localization/pt-PT/messenger/messenger.ftl
echo "msg-edit-restore-button = Restaurar"        >> localization/pt-PT/messenger/messenger.ftl
echo "    .title = Mostrar o valor original"     >> localization/pt-PT/messenger/messenger.ftl
echo "msg-edit-update-button = Atualizar"        >> localization/pt-PT/messenger/messenger.ftl

# Original strings:
# quick-filter-bar-negate =
#      .title = Right-click or Ctrl+Enter on a button negates the result.
#       For the text and tag filter, any negated button creates an AND condition.
#       When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages.
#       Examples:
#       • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’.
#       • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”.
#       • [Any of] with [Important] negated and [Work] and [Personal] selected:
#       Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag.
echo "quick-filter-bar-negate ="                                                            >> localization/pt-PT/messenger/about3Pane.ftl
echo "    .title = Clique com o botão direito ou Ctrl+Enter num botão para negar o resultado." >> localization/pt-PT/messenger/about3Pane.ftl
echo "      Para o filtro de texto e de etiquetas, qualquer botão negado cria uma condição E." >> localization/pt-PT/messenger/about3Pane.ftl
echo "      Quando o filtro de etiquetas está negado, selecionar um botão de etiqueta adiciona as mensagens respetivas à lista de mensagens sem etiqueta." >> localization/pt-PT/messenger/about3Pane.ftl
echo "      Exemplos:"                                                                      >> localization/pt-PT/messenger/about3Pane.ftl
echo "      • [Com estrela] e [Etiquetas] negados: mostra todas as mensagens que não têm estrela e não têm etiquetas." >> localization/pt-PT/messenger/about3Pane.ftl
echo "      • [Assunto] negado e [Corpo] selecionado: mostra todas as mensagens onde o “Assunto” não contém “palavra” e o “Corpo” contém “palavra”." >> localization/pt-PT/messenger/about3Pane.ftl
echo "      • [Qualquer de] com [Importante] negado e [Trabalho] e [Pessoal] selecionados:" >> localization/pt-PT/messenger/about3Pane.ftl
echo "      Mostrar todas as mensagens etiquetadas que não têm a etiqueta “Importante” e que têm a etiqueta “Trabalho” ou “Pessoal”." >> localization/pt-PT/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#      .label = Unthread Message
#      .accesskey = U
# mail-context-reset-message-threading =
#      .label = Restore Original Threading
#      .accesskey = R
echo "mail-context-unthread-message ="         >> localization/pt-PT/messenger/messenger.ftl
echo "    .label = Remover da sequência"        >> localization/pt-PT/messenger/messenger.ftl
echo "    .accesskey = U"                       >> localization/pt-PT/messenger/messenger.ftl
echo "mail-context-reset-message-threading =" >> localization/pt-PT/messenger/messenger.ftl
echo "    .label = Restaurar sequência original"  >> localization/pt-PT/messenger/messenger.ftl
echo "    .accesskey = R"                       >> localization/pt-PT/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="           >> localization/pt-PT/messenger/accountSettings.ftl
echo "  .label = Conta desativada"  >> localization/pt-PT/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#      .label = Match Address Book
#      .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="                                                                   >> localization/pt-PT/messenger/about3Pane.ftl
echo "    .label = Comparar com o livro de endereços"                                                              >> localization/pt-PT/messenger/about3Pane.ftl
echo "    .tooltiptext = Comparar com o nome exibido (começa com) ou alcunha (exata) nos seus livros de endereços" >> localization/pt-PT/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/pt-PT/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/pt-PT/messenger/preferences/preferences.ftl

echo "Expires=Expira" >> chrome/pt-PT/locale/pt-PT/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal =" >> localization/pt-PT/messenger/menubar.ftl
echo "    .label = Horizontal"        >> localization/pt-PT/messenger/menubar.ftl
echo "    .accesskey = z"             >> localization/pt-PT/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Armazenar artigos atualizados\">" >> chrome/pt-PT/locale/pt-PT/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"                          >> chrome/pt-PT/locale/pt-PT/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"Para fontes Atom ou JSON com a etiqueta &lt;updated&gt;. Se o editor alterar o valor, armazena o artigo, em vez de o tratar como duplicado.\">" >> chrome/pt-PT/locale/pt-PT/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Armazena um arquivo da página web com o artigo\">" >> chrome/pt-PT/locale/pt-PT/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/pt-PT/locale/pt-PT/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                     >> localization/pt-PT/messenger/folderprops.ftl
echo "  .label = Executar filtros em mensagens chegadas" >> localization/pt-PT/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/pt-PT/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: alguns dados foram descartados pelo servidor, por favor consulte a consola de erros para mais detalhes" >> localization/pt-PT/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/pt-PT/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: falha ao sincronizar com o servidor, por favor consulte a consola de erros para mais detalhes" >> localization/pt-PT/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort ="     >> localization/pt-PT/messenger/about3Pane.ftl
echo "  .label = Repor a ordem das pastas" >> localization/pt-PT/messenger/about3Pane.ftl
echo "  .accesskey = R"                    >> localization/pt-PT/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts ="                         >> localization/pt-PT/messenger/messenger.ftl
echo "  .label = Procurar em todas as contas de correio" >> localization/pt-PT/messenger/messenger.ftl
echo "  .accesskey = m"                                   >> localization/pt-PT/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=Assunto" >> chrome/pt-PT/locale/pt-PT/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Corpo"      >> chrome/pt-PT/locale/pt-PT/messenger/gloda.properties

# Categories
echo "about-addressbook-details-categories-header = Categorias" >> localization/pt-PT/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Categorias" >> localization/pt-PT/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Ordenar por categorias"                        >> localization/pt-PT/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="             >> localization/pt-PT/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Categorias"                                    >> localization/pt-PT/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                     >> localization/pt-PT/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Categorias"                               >> localization/pt-PT/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                   >> localization/pt-PT/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Categorias"                     >> localization/pt-PT/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Adicionar categoria"                  >> localization/pt-PT/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Categoria"                    >> localization/pt-PT/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Nome da categoria"            >> localization/pt-PT/messenger/addressbook/vcard.ftl
echo "Categories=Categorias" >> chrome/pt-PT/locale/pt-PT/messenger/search-attributes.properties
