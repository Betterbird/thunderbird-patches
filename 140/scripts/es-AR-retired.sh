# Script will only work if Windows system locale is set to UTF-8 !!

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Agregar un nuevo grupo" >> chrome/es-AR/locale/es-AR/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Carpeta de arranque\">" >> chrome/es-AR/locale/es-AR/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="                >> localization/es-AR/messenger/about3Pane.ftl
echo "    .tooltiptext = Mostrar mensajes sin etiquetas" >> localization/es-AR/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                  >> localization/es-AR/messenger/about3Pane.ftl
echo "    .tooltiptext = Mostrar mensajes con una o más etiquetas. Clic derecho para borrar la selección de etiquetas individuales." >> localization/es-AR/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .label = Habilitar la búsqueda en mensajes cifrados (almacena una copia descifrada localmente)" >> localization/es-AR/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="            >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
echo "    .label = Archivo(s) recientes…" >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="    >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
echo "    .label = Adjuntar archivo(s) recientes…" >> localization/es-AR/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                       >> localization/es-AR/messenger/menubar.ftl
echo "    .label = Vista multilínea en todas las carpetas" >> localization/es-AR/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option =" >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .label = HTML o Texto sin formato" >> localization/es-AR/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Si no se utiliza ningún estilo en el mensaje, enviar texto sin formato. De lo contrario, enviar sólo con formato HTML." >> localization/es-AR/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
echo "    .label = HTML o Texto sin formato"  >> localization/es-AR/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = o"                     >> localization/es-AR/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/es-AR/file/cd5519457360f8cc3b5fd0504920769bcccc3cbb/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=No se puede abrir el archivo de spool de correo %S." >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
echo "movemailCantCreateLock=No se puede crear el archivo de bloqueo %S. Para que movemail funcione, hay que crear archivos de bloqueo en el directorio de spool de correo. En muchos sistemas, esto se hace fijando el modo 01777 en el directorio spool." >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
echo "movemailCantDeleteLock=No se puede borrar el archivo de bloqueo %S."           >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=No se puede truncar el archivo de spool %S."     >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=No se puede encontrar el archivo de spool de correo." >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
echo "movemailCantParseSpool=No se puede analizar el archivo de spool %S. El archivo puede estar corrupto o no es válido." >> chrome/es-AR/locale/es-AR/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                              >> chrome/es-AR/locale/es-AR/messenger/messenger.properties

echo "account-action-add-movemail-account ="       >> localization/es-AR/messenger/accountManager.ftl
echo "    .label = Añadir una cuenta de Movemail…" >> localization/es-AR/messenger/accountManager.ftl
echo "    .accesskey = M"                          >> localization/es-AR/messenger/accountManager.ftl
echo "file-new-movemail-account ="                 >> localization/es-AR/messenger/menubar.ftl
echo "    .label = Cuenta de Movemail…"            >> localization/es-AR/messenger/menubar.ftl
echo "    .accesskey = M"                          >> localization/es-AR/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Sin leer: %S"       >> chrome/es-AR/locale/es-AR/messenger/messenger.properties
echo "selectedMsgStatus=Seleccionado: %S" >> chrome/es-AR/locale/es-AR/messenger/messenger.properties
echo "totalMsgStatus=Total: %S"           >> chrome/es-AR/locale/es-AR/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                       >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .label = Mostrar barra de pestañas verticalmente" >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                          >> localization/es-AR/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="             >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .label = Mostrar adjuntos por encima del mensaje" >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .accesskey = e"                          >> localization/es-AR/messenger/preferences/preferences.ftl

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
echo "restore-tabs-session-label ="                >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .value = Restaurar pestañas al iniciar:" >> localization/es-AR/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                          >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .label = Todas las pestañas"             >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .accesskey = T"                          >> localization/es-AR/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                       >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .label = Pestañas del sistema"           >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .accesskey = s"                          >> localization/es-AR/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                           >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .label = Ninguna"                        >> localization/es-AR/messenger/preferences/preferences.ftl
echo "    .accesskey = N"                          >> localization/es-AR/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread =" >> localization/es-AR/messenger/menubar.ftl
echo "    .label = Vista amplia de lista de mensajes" >> localization/es-AR/messenger/menubar.ftl
echo "    .accesskey = a"            >> localization/es-AR/messenger/menubar.ftl
echo "menu-view-layout-stacked ="    >> localization/es-AR/messenger/menubar.ftl
echo "    .label = Vista apilada"    >> localization/es-AR/messenger/menubar.ftl
echo "    .accesskey = p"            >> localization/es-AR/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="            >> localization/es-AR/messenger/messenger.ftl
echo "    .label = Editar encabezados…"           >> localization/es-AR/messenger/messenger.ftl
echo "    .accesskey = N"                         >> localization/es-AR/messenger/messenger.ftl
echo "msg-edit-dialog-title = Editar encabezados" >> localization/es-AR/messenger/messenger.ftl
echo "msg-edit-cancel-button = Cancelar"          >> localization/es-AR/messenger/messenger.ftl
echo "msg-edit-restore-button = Restablecer"      >> localization/es-AR/messenger/messenger.ftl
echo "    .title = Mostrar valor original"        >> localization/es-AR/messenger/messenger.ftl
echo "msg-edit-update-button = Actualizar"        >> localization/es-AR/messenger/messenger.ftl

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
echo "quick-filter-bar-negate ="                                                                                                         >> localization/es-AR/messenger/about3Pane.ftl
echo "    .title = Clic derecho o Ctrl+Enter en un botón niega el resultado."                                                            >> localization/es-AR/messenger/about3Pane.ftl
echo "      Para el filtro de texto y etiquetas, cualquier botón negado crea una condición Y."                                           >> localization/es-AR/messenger/about3Pane.ftl
echo "      Cuando se niega el filtro de etiquetas, al seleccionar un botón de etiqueta se agregan los mensajes respectivos a la lista." >> localization/es-AR/messenger/about3Pane.ftl
echo "      Ejemplos:"                                                                                                                   >> localization/es-AR/messenger/about3Pane.ftl
echo "      • [Destacados] y [Etiquetados] negados: Mensajes que No están ‘Destacados’ NI ‘Etiquetados’."                                >> localization/es-AR/messenger/about3Pane.ftl
echo "      • [Asunto] negado y [Cuerpo] seleccionado: Mensajes donde ‘Asunto’ No Contiene “palabra” Y ‘Cuerpo’ Contiene “palabra”." >> localization/es-AR/messenger/about3Pane.ftl
echo "      • [Cualquiera] con [Importante] negado y [Trabajo] y [Personal] seleccionados:"                                              >> localization/es-AR/messenger/about3Pane.ftl
echo "      Mensajes etiquetados que No tienen la etiqueta ‘Importante’ Y que tienen la etiqueta ‘Trabajo’ O ‘Personal’."                >> localization/es-AR/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="                >> localization/es-AR/messenger/messenger.ftl
echo "    .label = Quitar mensage de la conversación" >> localization/es-AR/messenger/messenger.ftl
echo "    .accesskey = Q"                             >> localization/es-AR/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="         >> localization/es-AR/messenger/messenger.ftl
echo "    .label = Restaurar conversación original"   >> localization/es-AR/messenger/messenger.ftl
echo "    .accesskey = R"                             >> localization/es-AR/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="              >> localization/es-AR/messenger/accountSettings.ftl
echo "  .label = Cuenta deshabilitada" >> localization/es-AR/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="                                                                                >> localization/es-AR/messenger/about3Pane.ftl
echo "    .label = Concordar con la libreta de direcciones"                                                                >> localization/es-AR/messenger/about3Pane.ftl
echo "    .tooltiptext = Concordar con nombre para mostrar (comienza por) o apodo (exacto) de las libretas de direcciones" >> localization/es-AR/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/es-AR/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/es-AR/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/es-AR/locale/es-AR/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal =" >> localization/es-AR/messenger/menubar.ftl
echo "    .label = Vista horizontal" >> localization/es-AR/messenger/menubar.ftl
echo "    .accesskey = z"            >> localization/es-AR/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Guardar artículos actualizados\">" >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"Para feeds Atom o JSON con el elemento &lt;updated&gt;. Si el editor cambia el valor, el artículo se guarda en lugar de tratarse como un duplicado.\">" >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Guardar un archivo de la página web junto con el artículo\">" >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/es-AR/locale/es-AR/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                        >> localization/es-AR/messenger/folderprops.ftl
echo "  .label = Ejecutar filtros en los mensajes entrantes" >> localization/es-AR/messenger/folderprops.ftl
