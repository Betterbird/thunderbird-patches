:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Agregar un nuevo grupo" >> chrome\es-AR\locale\es-AR\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Carpeta de arranque\">" >> chrome\es-AR\locale\es-AR\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="                >> localization\es-AR\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostrar mensajes sin etiquetas" >> localization\es-AR\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                  >> localization\es-AR\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostrar mensajes con una o más etiquetas. Clic derecho para borrar la selección de etiquetas individuales." >> localization\es-AR\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .label = Habilitar la búsqueda en mensajes cifrados (almacena una copia descifrada localmente)" >> localization\es-AR\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="            >> localization\es-AR\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Archivo(s) recientes…" >> localization\es-AR\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="    >> localization\es-AR\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Adjuntar archivo(s) recientes…" >> localization\es-AR\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                       >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .label = Vista multilínea en todas las carpetas" >> localization\es-AR\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .label = HTML o Texto sin formato" >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Si no se utiliza ningún estilo en el mensaje, enviar texto sin formato. De lo contrario, enviar sólo con formato HTML." >> localization\es-AR\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\es-AR\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = HTML o Texto sin formato"  >> localization\es-AR\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = o"                     >> localization\es-AR\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/es-AR/file/cd5519457360f8cc3b5fd0504920769bcccc3cbb/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=No se puede abrir el archivo de spool de correo %%S." >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=No se puede crear el archivo de bloqueo %%S. Para que movemail funcione, hay que crear archivos de bloqueo en el directorio de spool de correo. En muchos sistemas, esto se hace fijando el modo 01777 en el directorio spool." >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=No se puede borrar el archivo de bloqueo %%S."           >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=No se puede truncar el archivo de spool %%S."     >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=No se puede encontrar el archivo de spool de correo." >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=No se puede analizar el archivo de spool %%S. El archivo puede estar corrupto o no es válido." >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                              >> chrome\es-AR\locale\es-AR\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="       >> localization\es-AR\messenger\accountManager.ftl
%lecho% "    .label = Añadir una cuenta de Movemail…" >> localization\es-AR\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                          >> localization\es-AR\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="                 >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .label = Cuenta de Movemail…"            >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .accesskey = M"                          >> localization\es-AR\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Sin leer: %%S"       >> chrome\es-AR\locale\es-AR\messenger\messenger.properties
%lecho% "selectedMsgStatus=Seleccionado: %%S" >> chrome\es-AR\locale\es-AR\messenger\messenger.properties
%lecho% "totalMsgStatus=Total: %%S"           >> chrome\es-AR\locale\es-AR\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                       >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostrar barra de pestañas verticalmente" >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                          >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="             >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostrar adjuntos por encima del mensaje" >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = e"                          >> localization\es-AR\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .value = Restaurar pestañas al iniciar:" >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                          >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .label = Todas las pestañas"             >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = T"                          >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                       >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .label = Pestañas del sistema"           >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                          >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                           >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .label = Ninguna"                        >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = N"                          >> localization\es-AR\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread =" >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .label = Vista amplia de lista de mensajes" >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .accesskey = a"            >> localization\es-AR\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="    >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .label = Vista apilada"    >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .accesskey = p"            >> localization\es-AR\messenger\menubar.ftl
