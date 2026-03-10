# Script will only work if Windows system locale is set to UTF-8 !!

# Original strings:
# groupButtonTooltipText=Add a new group
lessecho "groupButtonTooltipText=Agregar un nuevo grupo" >> chrome/es-AR/locale/es-AR/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
lessecho "<!ENTITY folderContextStartupFolder.label \"Carpeta de arranque\">" >> chrome/es-AR/locale/es-AR/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
lessecho "quick-filter-bar-untagged-button ="                >> localization/es-AR/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Mostrar mensajes sin etiquetas" >> localization/es-AR/messenger/about3Pane.ftl
lessecho "quick-filter-bar-tagged-button ="                  >> localization/es-AR/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Mostrar mensajes con una o más etiquetas. Clic derecho para borrar la selección de etiquetas individuales." >> localization/es-AR/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
lessecho "enable-gloda-search-encrypted-label =" >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .label = Habilitar la búsqueda en mensajes cifrados (almacena una copia descifrada localmente)" >> localization/es-AR/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
lessecho "menuitem-recent-files ="            >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Archivo(s) recientes…" >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
lessecho "context-menuitem-recent-files ="    >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = Adjuntar archivo(s) recientes…" >> localization/es-AR/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
lessecho "menu-multi-line-all-folders ="                       >> localization/es-AR/messenger/menubar.ftl
lessecho "    .label = Vista multilínea en todas las carpetas" >> localization/es-AR/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
lessecho "compose-send-plain-or-html-option =" >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .label = HTML o Texto sin formato" >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "compose-send-plain-or-html-description = Si no se utiliza ningún estilo en el mensaje, enviar texto sin formato. De lo contrario, enviar sólo con formato HTML." >> localization/es-AR/messenger/preferences/preferences.ftl

lessecho "compose-send-plain-or-html-menu-item =" >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
lessecho "    .label = HTML o Texto sin formato"  >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
lessecho "    .accesskey = o"                     >> localization/es-AR/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/es-AR/file/cd5519457360f8cc3b5fd0504920769bcccc3cbb/mail/chrome/messenger/localMsgs.properties
lessecho "movemailCantOpenSpoolFile=No se puede abrir el archivo de spool de correo %S." >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
lessecho "movemailCantCreateLock=No se puede crear el archivo de bloqueo %S. Para que movemail funcione, hay que crear archivos de bloqueo en el directorio de spool de correo. En muchos sistemas, esto se hace fijando el modo 01777 en el directorio spool." >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
lessecho "movemailCantDeleteLock=No se puede borrar el archivo de bloqueo %S."           >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
lessecho "movemailCantTruncateSpoolFile=No se puede truncar el archivo de spool %S."     >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
lessecho "movemailSpoolFileNotFound=No se puede encontrar el archivo de spool de correo." >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
lessecho "movemailCantParseSpool=No se puede analizar el archivo de spool %S. El archivo puede estar corrupto o no es válido." >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
lessecho "serverType-movemail=Unix Movemail"                                              >> chrome/es-AR/locale/es-AR/messenger/messenger.properties

lessecho "account-action-add-movemail-account ="       >> localization/es-AR/messenger/accountManager.ftl
lessecho "    .label = Añadir una cuenta de Movemail…" >> localization/es-AR/messenger/accountManager.ftl
lessecho "    .accesskey = M"                          >> localization/es-AR/messenger/accountManager.ftl
lessecho "file-new-movemail-account ="                 >> localization/es-AR/messenger/menubar.ftl
lessecho "    .label = Cuenta de Movemail…"            >> localization/es-AR/messenger/menubar.ftl
lessecho "    .accesskey = M"                          >> localization/es-AR/messenger/menubar.ftl

# Unread/seleted status
lessecho "unreadMsgStatus=Sin leer: %S"       >> chrome/es-AR/locale/es-AR/messenger/messenger.properties
lessecho "selectedMsgStatus=Seleccionado: %S" >> chrome/es-AR/locale/es-AR/messenger/messenger.properties
lessecho "totalMsgStatus=Total: %S"           >> chrome/es-AR/locale/es-AR/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
lessecho "vertical-tabs-label ="                       >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .label = Mostrar barra de pestañas verticalmente" >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .accesskey = v"                          >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "attachments-display-top-label ="             >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .label = Mostrar adjuntos por encima del mensaje" >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .accesskey = e"                          >> localization/es-AR/messenger/preferences/preferences.ftl

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
lessecho "restore-tabs-session-label ="                >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .value = Restaurar pestañas al iniciar:" >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "restore-all-tabs ="                          >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .label = Todas las pestañas"             >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .accesskey = T"                          >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "restore-system-tabs ="                       >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .label = Pestañas del sistema"           >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .accesskey = s"                          >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "restore-no-tabs ="                           >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .label = Ninguna"                        >> localization/es-AR/messenger/preferences/preferences.ftl
lessecho "    .accesskey = N"                          >> localization/es-AR/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
lessecho "menu-view-layout-widethread =" >> localization/es-AR/messenger/menubar.ftl
lessecho "    .label = Vista amplia de lista de mensajes" >> localization/es-AR/messenger/menubar.ftl
lessecho "    .accesskey = a"            >> localization/es-AR/messenger/menubar.ftl
lessecho "menu-view-layout-stacked ="    >> localization/es-AR/messenger/menubar.ftl
lessecho "    .label = Vista apilada"    >> localization/es-AR/messenger/menubar.ftl
lessecho "    .accesskey = p"            >> localization/es-AR/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
lessecho "other-action-msg-edit-headers ="            >> localization/es-AR/messenger/messenger.ftl
lessecho "    .label = Editar encabezados…"           >> localization/es-AR/messenger/messenger.ftl
lessecho "    .accesskey = N"                         >> localization/es-AR/messenger/messenger.ftl
lessecho "msg-edit-dialog-title = Editar encabezados" >> localization/es-AR/messenger/messenger.ftl
lessecho "msg-edit-cancel-button = Cancelar"          >> localization/es-AR/messenger/messenger.ftl
lessecho "msg-edit-restore-button = Restablecer"      >> localization/es-AR/messenger/messenger.ftl
lessecho "    .title = Mostrar valor original"        >> localization/es-AR/messenger/messenger.ftl
lessecho "msg-edit-update-button = Actualizar"        >> localization/es-AR/messenger/messenger.ftl

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
lessecho "quick-filter-bar-negate ="                                                                                                         >> localization/es-AR/messenger/about3Pane.ftl
lessecho "    .title = Clic derecho o Ctrl+Enter en un botón niega el resultado."                                                            >> localization/es-AR/messenger/about3Pane.ftl
lessecho "      Para el filtro de texto y etiquetas, cualquier botón negado crea una condición Y."                                           >> localization/es-AR/messenger/about3Pane.ftl
lessecho "      Cuando se niega el filtro de etiquetas, al seleccionar un botón de etiqueta se agregan los mensajes respectivos a la lista." >> localization/es-AR/messenger/about3Pane.ftl
lessecho "      Ejemplos:"                                                                                                                   >> localization/es-AR/messenger/about3Pane.ftl
lessecho "      • [Destacados] y [Etiquetados] negados: Mensajes que No están ‘Destacados’ NI ‘Etiquetados’."                                >> localization/es-AR/messenger/about3Pane.ftl
lessecho "      • [Asunto] negado y [Cuerpo] seleccionado: Mensajes donde ‘Asunto’ No Contiene “palabra” Y ‘Cuerpo’ Contiene “palabra”." >> localization/es-AR/messenger/about3Pane.ftl
lessecho "      • [Cualquiera] con [Importante] negado y [Trabajo] y [Personal] seleccionados:"                                              >> localization/es-AR/messenger/about3Pane.ftl
lessecho "      Mensajes etiquetados que No tienen la etiqueta ‘Importante’ Y que tienen la etiqueta ‘Trabajo’ O ‘Personal’."                >> localization/es-AR/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
lessecho "mail-context-unthread-message ="                >> localization/es-AR/messenger/messenger.ftl
lessecho "    .label = Quitar mensage de la conversación" >> localization/es-AR/messenger/messenger.ftl
lessecho "    .accesskey = Q"                             >> localization/es-AR/messenger/messenger.ftl
lessecho "mail-context-reset-message-threading ="         >> localization/es-AR/messenger/messenger.ftl
lessecho "    .label = Restaurar conversación original"   >> localization/es-AR/messenger/messenger.ftl
lessecho "    .accesskey = R"                             >> localization/es-AR/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
lessecho "account-disabled ="              >> localization/es-AR/messenger/accountSettings.ftl
lessecho "  .label = Cuenta deshabilitada" >> localization/es-AR/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
lessecho "quick-filter-bar-match-addressbook ="                                                                                >> localization/es-AR/messenger/about3Pane.ftl
lessecho "    .label = Concordar con la libreta de direcciones"                                                                >> localization/es-AR/messenger/about3Pane.ftl
lessecho "    .tooltiptext = Concordar con nombre para mostrar (comienza por) o apodo (exacto) de las libretas de direcciones" >> localization/es-AR/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/es-AR/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/es-AR/messenger/preferences/preferences.ftl

lessecho "Expires=Expires" >> chrome/es-AR/locale/es-AR/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
lessecho "menu-view-layout-horizontal =" >> localization/es-AR/messenger/menubar.ftl
lessecho "    .label = Vista horizontal" >> localization/es-AR/messenger/menubar.ftl
lessecho "    .accesskey = z"            >> localization/es-AR/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
lessecho "<!ENTITY storeOnUpdated.label \"Guardar artículos actualizados\">" >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeOnUpdatedInfo.label \"Para feeds Atom o JSON con el elemento &lt;updated&gt;. Si el editor cambia el valor, el artículo se guarda en lugar de tratarse como un duplicado.\">" >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.label \"Guardar un archivo de la página web junto con el artículo\">" >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd
lessecho "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
lessecho "run-filters-on-incoming-msgs ="                        >> localization/es-AR/messenger/folderprops.ftl
lessecho "  .label = Ejecutar filtros en los mensajes entrantes" >> localization/es-AR/messenger/folderprops.ftl
