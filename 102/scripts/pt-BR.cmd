:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Adicionar um novo grupo" >> chrome\pt-BR\locale\pt-BR\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Pasta de inicialização\">" >> chrome\pt-BR\locale\pt-BR\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Mostrar mensagens sem etiquetas\">" >> chrome\pt-BR\locale\pt-BR\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Mostrar mensagens com uma ou mais etiquetas. Clique com o botão direito do mouse para limpar a seleção de etiquetas individuais.\">" >> chrome\pt-BR\locale\pt-BR\messenger\quickFilterBar.dtd

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
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Visão multilinha em todas as pastas\">" >> chrome\pt-BR\locale\pt-BR\messenger\messenger.dtd

:: Original strings:
:: mail-multiline-all-folders =
::     .label = Multi-line View On All Folders
:: mail-multiline-individual-folders =
::     .label = Multi-line View Via Subject Column
:: mail-multiline-no-folders =
::     .label = No Multi-line View
%lecho% "mail-multiline-all-folders ="        >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .label = Visão multilinha em todas as pastas" >> localization\pt-BR\messenger\menubar.ftl
%lecho% "mail-multiline-individual-folders =" >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .label = Visão multilinha via coluna Assunto" >> localization\pt-BR\messenger\menubar.ftl
%lecho% "mail-multiline-no-folders ="         >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .label = Sem visão multilinha"   >> localization\pt-BR\messenger\menubar.ftl

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

:: Fix missing ! in the about box.
sed -i -e 's/ENTITY helpus.end.*""/ENTITY helpus.end "!"/' chrome\pt-BR\locale\pt-BR\messenger\aboutDialog.dtd

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/pt-BR/file/5ad8709a37c8f82389ad95a7fb00b65f641433ad/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Não foi possível abrir o arquivo de spool de emails %S."  >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Não foi possível criar o arquivo de bloqueio %S. Para o movemail funcionar, é necessário criar arquivos de bloqueio no diretório de spool de emails. Em muitos sistemas, a melhor forma de resolver isso é colocar o diretório de spool no modo 01777." >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Não foi possível apagar o arquivo de bloqueio %S."           >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Não foi possível truncar o arquivo de spool %S."      >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Não foi possível encontrar o arquivo de spool de emails." >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Não foi possível processar o arquivo spool de emails %S. O arquivo pode estar corrompido ou não ser válido." >> chrome\pt-BR\locale\pt-BR\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                                  >> chrome\pt-BR\locale\pt-BR\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="     >> localization\pt-BR\messenger\accountManager.ftl
%lecho% "    .label = Adicionar conta de Movemail…" >> localization\pt-BR\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                        >> localization\pt-BR\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="               >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .label = Conta de Movemail…"           >> localization\pt-BR\messenger\menubar.ftl
%lecho% "    .accesskey = M"                        >> localization\pt-BR\messenger\menubar.ftl
