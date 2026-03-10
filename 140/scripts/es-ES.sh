# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/es-ES/locale/es-ES/messenger/appstrings.properties

# Fix bad translations.
sed -i -e 's/label = Ir al campo Cc/label = Mover al campo Cc/' localization/es-ES/messenger/messengercompose/messengercompose.ftl
sed -i -e 's/label = Ir al campo Bcc/label = Mover al campo Bcc/' localization/es-ES/messenger/messengercompose/messengercompose.ftl

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Agregar un nuevo grupo" >> chrome/es-ES/locale/es-ES/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Carpeta de arranque\">" >> chrome/es-ES/locale/es-ES/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="                >> localization/es-ES/messenger/about3Pane.ftl
echo "    .tooltiptext = Mostrar mensajes sin etiquetas" >> localization/es-ES/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                  >> localization/es-ES/messenger/about3Pane.ftl
echo "    .tooltiptext = Mostrar mensajes con una o más etiquetas. Clic derecho para borrar la selección de etiquetas individuales." >> localization/es-ES/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .label = Habilitar la búsqueda en mensajes cifrados (almacena una copia descifrada localmente)" >> localization/es-ES/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="            >> localization/es-ES/messenger/messengercompose/messengercompose.ftl
echo "    .label = Archivo(s) recientes…" >> localization/es-ES/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="    >> localization/es-ES/messenger/messengercompose/messengercompose.ftl
echo "    .label = Adjuntar archivo(s) recientes…" >> localization/es-ES/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                       >> localization/es-ES/messenger/menubar.ftl
echo "    .label = Vista multilínea en todas las carpetas" >> localization/es-ES/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option =" >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .label = HTML o Texto sin formato" >> localization/es-ES/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = Si no se utiliza ningún estilo en el mensaje, enviar texto sin formato. De lo contrario, enviar sólo con formato HTML." >> localization/es-ES/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/es-ES/messenger/messengercompose/messengercompose.ftl
echo "    .label = HTML o Texto sin formato"  >> localization/es-ES/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = o"                     >> localization/es-ES/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://github.com/thunderbird/thunderbird-l10n/blob/b1e23013f75044e9a8b6ca9dc8a5a3298e3d34cf/es-ES/mail/chrome/messenger/localMsgs.properties#L30
echo "movemailCantOpenSpoolFile=No se puede abrir el archivo de spool de correo %S." >> chrome/es-ES/locale/es-ES/messenger/localMsgs.properties
echo "movemailCantCreateLock=No se puede crear el archivo de bloqueo %S. Para que movemail funcione, hay que crear archivos de bloqueo en el directorio de spool de correo. En muchos sistemas, esto se hace fijando el modo 01777 en el directorio spool." >> chrome/es-ES/locale/es-ES/messenger/localMsgs.properties
echo "movemailCantDeleteLock=No se puede eliminar el archivo de bloqueo %S."           >> chrome/es-ES/locale/es-ES/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=No se puede truncar el archivo de spool %S."     >> chrome/es-ES/locale/es-ES/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=No se puede encontrar el archivo de spool de correo." >> chrome/es-ES/locale/es-ES/messenger/localMsgs.properties
echo "movemailCantParseSpool=No se puede interpretar el archivo spool %S. El archivo puede estar dañado o no ser válido." >> chrome/es-ES/locale/es-ES/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                              >> chrome/es-ES/locale/es-ES/messenger/messenger.properties

echo "account-action-add-movemail-account ="       >> localization/es-ES/messenger/accountManager.ftl
echo "    .label = Añadir una cuenta de Movemail…" >> localization/es-ES/messenger/accountManager.ftl
echo "    .accesskey = M"                          >> localization/es-ES/messenger/accountManager.ftl
echo "file-new-movemail-account ="                 >> localization/es-ES/messenger/menubar.ftl
echo "    .label = Cuenta de Movemail…"            >> localization/es-ES/messenger/menubar.ftl
echo "    .accesskey = M"                          >> localization/es-ES/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Sin leer: %S"       >> chrome/es-ES/locale/es-ES/messenger/messenger.properties
echo "selectedMsgStatus=Seleccionado: %S" >> chrome/es-ES/locale/es-ES/messenger/messenger.properties
echo "totalMsgStatus=Total: %S"           >> chrome/es-ES/locale/es-ES/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                       >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .label = Mostrar barra de pestañas verticalmente" >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                          >> localization/es-ES/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="             >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .label = Mostrar adjuntos por encima del mensaje" >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .accesskey = e"                          >> localization/es-ES/messenger/preferences/preferences.ftl

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
echo "restore-tabs-session-label ="                >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .value = Restaurar pestañas al iniciar:" >> localization/es-ES/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                          >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .label = Todas las pestañas"             >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .accesskey = T"                          >> localization/es-ES/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                       >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .label = Pestañas del sistema"           >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .accesskey = s"                          >> localization/es-ES/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                           >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .label = Ninguna"                        >> localization/es-ES/messenger/preferences/preferences.ftl
echo "    .accesskey = N"                          >> localization/es-ES/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread =" >> localization/es-ES/messenger/menubar.ftl
echo "    .label = Vista amplia de lista de mensajes" >> localization/es-ES/messenger/menubar.ftl
echo "    .accesskey = a"            >> localization/es-ES/messenger/menubar.ftl
echo "menu-view-layout-stacked ="    >> localization/es-ES/messenger/menubar.ftl
echo "    .label = Vista apilada"    >> localization/es-ES/messenger/menubar.ftl
echo "    .accesskey = p"            >> localization/es-ES/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="            >> localization/es-ES/messenger/messenger.ftl
echo "    .label = Editar encabezados…"           >> localization/es-ES/messenger/messenger.ftl
echo "    .accesskey = N"                         >> localization/es-ES/messenger/messenger.ftl
echo "msg-edit-dialog-title = Editar encabezados" >> localization/es-ES/messenger/messenger.ftl
echo "msg-edit-cancel-button = Cancelar"          >> localization/es-ES/messenger/messenger.ftl
echo "msg-edit-restore-button = Restablecer"      >> localization/es-ES/messenger/messenger.ftl
echo "    .title = Mostrar valor original"        >> localization/es-ES/messenger/messenger.ftl
echo "msg-edit-update-button = Actualizar"        >> localization/es-ES/messenger/messenger.ftl

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
echo "quick-filter-bar-negate ="                                                                                                         >> localization/es-ES/messenger/about3Pane.ftl
echo "    .title = Clic derecho o Ctrl+Enter en un botón niega el resultado."                                                            >> localization/es-ES/messenger/about3Pane.ftl
echo "      Para el filtro de texto y etiquetas, cualquier botón negado crea una condición Y."                                           >> localization/es-ES/messenger/about3Pane.ftl
echo "      Cuando se niega el filtro de etiquetas, al seleccionar un botón de etiqueta se agregan los mensajes respectivos a la lista." >> localization/es-ES/messenger/about3Pane.ftl
echo "      Ejemplos:"                                                                                                                   >> localization/es-ES/messenger/about3Pane.ftl
echo "      • [Destacados] y [Etiquetados] negados: Mensajes que No están ‘Destacados’ NI ‘Etiquetados’."                                >> localization/es-ES/messenger/about3Pane.ftl
echo "      • [Asunto] negado y [Cuerpo] seleccionado: Mensajes donde ‘Asunto’ No Contiene “palabra” Y ‘Cuerpo’ Contiene “palabra”." >> localization/es-ES/messenger/about3Pane.ftl
echo "      • [Cualquiera] con [Importante] negado y [Trabajo] y [Personal] seleccionados:"                                              >> localization/es-ES/messenger/about3Pane.ftl
echo "      Mensajes etiquetados que No tienen la etiqueta ‘Importante’ Y que tienen la etiqueta ‘Trabajo’ O ‘Personal’."                >> localization/es-ES/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="                >> localization/es-ES/messenger/messenger.ftl
echo "    .label = Quitar mensage de la conversación" >> localization/es-ES/messenger/messenger.ftl
echo "    .accesskey = Q"                             >> localization/es-ES/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="         >> localization/es-ES/messenger/messenger.ftl
echo "    .label = Restaurar conversación original"   >> localization/es-ES/messenger/messenger.ftl
echo "    .accesskey = R"                             >> localization/es-ES/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="              >> localization/es-ES/messenger/accountSettings.ftl
echo "  .label = Cuenta deshabilitada" >> localization/es-ES/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="                                                                                >> localization/es-ES/messenger/about3Pane.ftl
echo "    .label = Concordar con la libreta de direcciones"                                                                >> localization/es-ES/messenger/about3Pane.ftl
echo "    .tooltiptext = Concordar con nombre para mostrar (comienza por) o apodo (exacto) de las libretas de direcciones" >> localization/es-ES/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/es-ES/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/es-ES/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/es-ES/locale/es-ES/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal =" >> localization/es-ES/messenger/menubar.ftl
echo "    .label = Vista horizontal" >> localization/es-ES/messenger/menubar.ftl
echo "    .accesskey = z"            >> localization/es-ES/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Guardar artículos actualizados\">" >> chrome/es-ES/locale/es-ES/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"                  >> chrome/es-ES/locale/es-ES/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"Para feeds Atom o JSON con el elemento &lt;updated&gt;. Si el editor cambia el valor, el artículo se guarda en lugar de tratarse como un duplicado.\">" >> chrome/es-ES/locale/es-ES/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Guardar un archivo de la página web junto con el artículo\">" >> chrome/es-ES/locale/es-ES/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/es-ES/locale/es-ES/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                        >> localization/es-ES/messenger/folderprops.ftl
echo "  .label = Ejecutar filtros en los mensajes entrantes" >> localization/es-ES/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/es-ES/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Algunos datos fueron descartados por el servidor, por favor consulte la Consola de errores para más detalles" >> localization/es-ES/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/es-ES/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Falló la sincronización con el servidor, por favor consulte la Consola de errores para más detalles" >> localization/es-ES/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort ="         >> localization/es-ES/messenger/about3Pane.ftl
echo "  .label = Restablecer orden de carpetas" >> localization/es-ES/messenger/about3Pane.ftl
echo "  .accesskey = R"                         >> localization/es-ES/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts ="                       >> localization/es-ES/messenger/messenger.ftl
echo "  .label = Buscar en todas las cuentas de correo" >> localization/es-ES/messenger/messenger.ftl
echo "  .accesskey = o"                                 >> localization/es-ES/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=Asunto" >> chrome/es-ES/locale/es-ES/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=Cuerpo"    >> chrome/es-ES/locale/es-ES/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = Categorías" >> localization/es-ES/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = Categorías" >> localization/es-ES/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = Ordenar por categorías"                        >> localization/es-ES/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="             >> localization/es-ES/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = Categorías"                                    >> localization/es-ES/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="                     >> localization/es-ES/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = Categorías"                               >> localization/es-ES/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                                   >> localization/es-ES/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = Categorías"                     >> localization/es-ES/messenger/addressbook/vcard.ftl
echo "vcard-category-add = Añadir categoría"                    >> localization/es-ES/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = Categoría"                   >> localization/es-ES/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = Nombre de la categoría"      >> localization/es-ES/messenger/addressbook/vcard.ftl
echo "Categories=Categorías" >> chrome/es-ES/locale/es-ES/messenger/search-attributes.properties
