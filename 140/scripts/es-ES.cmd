:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Fix bad translations.
sed -i -e 's/label = Ir al campo Cc/label = Mover al campo Cc/' localization\es-ES\messenger\messengercompose\messengercompose.ftl
sed -i -e 's/label = Ir al campo Bcc/label = Mover al campo Bcc/' localization\es-ES\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Agregar un nuevo grupo" >> chrome\es-ES\locale\es-ES\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Carpeta de arranque\">" >> chrome\es-ES\locale\es-ES\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="                >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostrar mensajes sin etiquetas" >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                  >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Mostrar mensajes con una o más etiquetas. Clic derecho para borrar la selección de etiquetas individuales." >> localization\es-ES\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .label = Habilitar la búsqueda en mensajes cifrados (almacena una copia descifrada localmente)" >> localization\es-ES\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="            >> localization\es-ES\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Archivo(s) recientes…" >> localization\es-ES\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="    >> localization\es-ES\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Adjuntar archivo(s) recientes…" >> localization\es-ES\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                       >> localization\es-ES\messenger\menubar.ftl
%lecho% "    .label = Vista multilínea en todas las carpetas" >> localization\es-ES\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .label = HTML o Texto sin formato" >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Si no se utiliza ningún estilo en el mensaje, enviar texto sin formato. De lo contrario, enviar sólo con formato HTML." >> localization\es-ES\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\es-ES\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = HTML o Texto sin formato"  >> localization\es-ES\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = o"                     >> localization\es-ES\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://github.com/thunderbird/thunderbird-l10n/blob/b1e23013f75044e9a8b6ca9dc8a5a3298e3d34cf/es-ES/mail/chrome/messenger/localMsgs.properties#L30
%lecho% "movemailCantOpenSpoolFile=No se puede abrir el archivo de spool de correo %%S." >> chrome\es-ES\locale\es-ES\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=No se puede crear el archivo de bloqueo %%S. Para que movemail funcione, hay que crear archivos de bloqueo en el directorio de spool de correo. En muchos sistemas, esto se hace fijando el modo 01777 en el directorio spool." >> chrome\es-ES\locale\es-ES\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=No se puede eliminar el archivo de bloqueo %%S."           >> chrome\es-ES\locale\es-ES\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=No se puede truncar el archivo de spool %%S."     >> chrome\es-ES\locale\es-ES\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=No se puede encontrar el archivo de spool de correo." >> chrome\es-ES\locale\es-ES\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=No se puede interpretar el archivo spool %%S. El archivo puede estar dañado o no ser válido." >> chrome\es-ES\locale\es-ES\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                              >> chrome\es-ES\locale\es-ES\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="       >> localization\es-ES\messenger\accountManager.ftl
%lecho% "    .label = Añadir una cuenta de Movemail…" >> localization\es-ES\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                          >> localization\es-ES\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="                 >> localization\es-ES\messenger\menubar.ftl
%lecho% "    .label = Cuenta de Movemail…"            >> localization\es-ES\messenger\menubar.ftl
%lecho% "    .accesskey = M"                          >> localization\es-ES\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Sin leer: %%S"       >> chrome\es-ES\locale\es-ES\messenger\messenger.properties
%lecho% "selectedMsgStatus=Seleccionado: %%S" >> chrome\es-ES\locale\es-ES\messenger\messenger.properties
%lecho% "totalMsgStatus=Total: %%S"           >> chrome\es-ES\locale\es-ES\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                       >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostrar barra de pestañas verticalmente" >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                          >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="             >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .label = Mostrar adjuntos por encima del mensaje" >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = e"                          >> localization\es-ES\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .value = Restaurar pestañas al iniciar:" >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                          >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .label = Todas las pestañas"             >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = T"                          >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                       >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .label = Pestañas del sistema"           >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                          >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                           >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .label = Ninguna"                        >> localization\es-ES\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = N"                          >> localization\es-ES\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread =" >> localization\es-ES\messenger\menubar.ftl
%lecho% "    .label = Vista amplia de lista de mensajes" >> localization\es-ES\messenger\menubar.ftl
%lecho% "    .accesskey = a"            >> localization\es-ES\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="    >> localization\es-ES\messenger\menubar.ftl
%lecho% "    .label = Vista apilada"    >> localization\es-ES\messenger\menubar.ftl
%lecho% "    .accesskey = p"            >> localization\es-ES\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="            >> localization\es-ES\messenger\messenger.ftl
%lecho% "    .label = Editar encabezados…"           >> localization\es-ES\messenger\messenger.ftl
%lecho% "    .accesskey = N"                         >> localization\es-ES\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Editar encabezados" >> localization\es-ES\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Cancelar"          >> localization\es-ES\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Restablecer"      >> localization\es-ES\messenger\messenger.ftl
%lecho% "    .title = Mostrar valor original"        >> localization\es-ES\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Actualizar"        >> localization\es-ES\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                                                         >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "    .title = Clic derecho o Ctrl+Enter en un botón niega el resultado."                                                            >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "      Para el filtro de texto y etiquetas, cualquier botón negado crea una condición Y."                                           >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "      Cuando se niega el filtro de etiquetas, al seleccionar un botón de etiqueta se agregan los mensajes respectivos a la lista." >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "      Ejemplos:"                                                                                                                   >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "      • [Destacados] y [Etiquetados] negados: Mensajes que No están ‘Destacados’ NI ‘Etiquetados’."                                >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "      • [Asunto] negado y [Cuerpo] seleccionado: Mensajes donde ‘Asunto’ No Contiene “palabra” Y ‘Cuerpo’ Contiene “palabra”." >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "      • [Cualquiera] con [Importante] negado y [Trabajo] y [Personal] seleccionados:"                                              >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "      Mensajes etiquetados que No tienen la etiqueta ‘Importante’ Y que tienen la etiqueta ‘Trabajo’ O ‘Personal’."                >> localization\es-ES\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="                >> localization\es-ES\messenger\messenger.ftl
%lecho% "    .label = Quitar mensage de la conversación" >> localization\es-ES\messenger\messenger.ftl
%lecho% "    .accesskey = Q"                             >> localization\es-ES\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="         >> localization\es-ES\messenger\messenger.ftl
%lecho% "    .label = Restaurar conversación original"   >> localization\es-ES\messenger\messenger.ftl
%lecho% "    .accesskey = R"                             >> localization\es-ES\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="              >> localization\es-ES\messenger\accountSettings.ftl
%lecho% "  .label = Cuenta deshabilitada" >> localization\es-ES\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="                                                                                >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "    .label = Concordar con la libreta de direcciones"                                                                >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Concordar con nombre para mostrar (comienza por) o apodo (exacto) de las libretas de direcciones" >> localization\es-ES\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\es-ES\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\es-ES\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\es-ES\locale\es-ES\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal =" >> localization\es-ES\messenger\menubar.ftl
%lecho% "    .label = Vista horizontal" >> localization\es-ES\messenger\menubar.ftl
%lecho% "    .accesskey = z"            >> localization\es-ES\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"Guardar artículos actualizados\">" >> chrome\es-ES\locale\es-ES\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome\es-ES\locale\es-ES\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \"Para feeds Atom o JSON con el elemento "'&lt;updated&gt;'". Si el editor cambia el valor, el artículo se guarda en lugar de tratarse como un duplicado.\">" >> chrome\es-ES\locale\es-ES\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"Guardar un archivo de la página web junto con el artículo\">" >> chrome\es-ES\locale\es-ES\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\es-ES\locale\es-ES\messenger-newsblog\feed-subscriptions.dtd

:: Original strings:
:: run-filters-on-incoming-msgs =
::   .label = Run filters on incoming messages
%lecho% "run-filters-on-incoming-msgs ="                        >> localization\es-ES\messenger\folderprops.ftl
%lecho% "  .label = Ejecutar filtros en los mensajes entrantes" >> localization\es-ES\messenger\folderprops.ftl

:: Original strings:
:: carddav-directory-sync-warning =
::    CardDAV: Some data was dropped by the server, please check the Error Console for details
::carddav-directory-sync-failed =
::    CardDAV: Synchronisation with the server failed, please check the Error Console for details
%lecho% "carddav-directory-sync-warning =" >> localization\es-ES\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: Algunos datos fueron descartados por el servidor, por favor consulte la Consola de errores para más detalles" >> localization\es-ES\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "carddav-directory-sync-failed =" >> localization\es-ES\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: Falló la sincronización con el servidor, por favor consulte la Consola de errores para más detalles" >> localization\es-ES\messenger\addressbook\abCardDAVProperties.ftl

:: Strings for bug 1972710:
:: folder-pane-context-reset-sort =
::   .label = Reset Folder Order
::   .accesskey = R
%lecho% "folder-pane-context-reset-sort ="         >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "  .label = Restablecer orden de carpetas" >> localization\es-ES\messenger\about3Pane.ftl
%lecho% "  .accesskey = R"                         >> localization\es-ES\messenger\about3Pane.ftl

:: Strings for searching all mail accounts:
:: search-all-mail-accounts =
::   .label = Search all mail accounts
::   .accesskey = m
%lecho% "search-all-mail-accounts ="                       >> localization\es-ES\messenger\messenger.ftl
%lecho% "  .label = Buscar en todas las cuentas de correo" >> localization\es-ES\messenger\messenger.ftl
%lecho% "  .accesskey = o"                                 >> localization\es-ES\messenger\messenger.ftl

:: New Gloda facets:
:: gloda.message.attr._subjectMatches.facetNameLabel=Subject
:: gloda.message.attr._bodyMatches.facetNameLabel=Body
%lecho% "gloda.message.attr._subjectMatches.facetNameLabel=Asunto" >> chrome\es-ES\locale\es-ES\messenger\gloda.properties
%lecho% "gloda.message.attr._bodyMatches.facetNameLabel=Cuerpo"    >> chrome\es-ES\locale\es-ES\messenger\gloda.properties
