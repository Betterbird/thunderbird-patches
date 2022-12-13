:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Agregar un nuevo grupo" >> chrome\es-AR\locale\es-AR\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Carpeta de arranque\">" >> chrome\es-AR\locale\es-AR\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Mostrar mensajes sin etiquetas\">" >> chrome\es-AR\locale\es-AR\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Mostrar mensajes con una o más etiquetas. Clic derecho para borrar la selección de etiquetas individuales.\">" >> chrome\es-AR\locale\es-AR\messenger\quickFilterBar.dtd

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
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Vista multilínea en todas las carpetas\">" >> chrome\es-AR\locale\es-AR\messenger\messenger.dtd

:: Original strings:
:: mail-multiline-all-folders =
::     .label = Multi-line View On All Folders
:: mail-multiline-individual-folders =
::     .label = Multi-line View Via Subject Column
:: mail-multiline-no-folders =
::     .label = No Multi-line View
%lecho% "mail-multiline-all-folders ="        >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .label = Vista multilínea en todas las carpetas" >> localization\es-AR\messenger\menubar.ftl
%lecho% "mail-multiline-individual-folders =" >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .label = Vista multilínea mediante la columna de Asunto" >> localization\es-AR\messenger\menubar.ftl
%lecho% "mail-multiline-no-folders ="         >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .label = Sin vista multilínea"   >> localization\es-AR\messenger\menubar.ftl

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

:: Fix missing ! in the about box.
sed -i -e 's/ENTITY helpus.end.*""/ENTITY helpus.end "!"/' chrome\es-AR\locale\es-AR\messenger\aboutDialog.dtd

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/es-AR/file/cd5519457360f8cc3b5fd0504920769bcccc3cbb/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=No se puede abrir el archivo de spool de correo %S."  >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=No se puede crear el archivo de bloqueo %S. Para que movemail funcione, hay que crear archivos de bloqueo en el directorio de spool de correo. En muchos sistemas, esto se hace fijando el modo 01777 en el directorio spool." >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=No se puede borrar el archivo de bloqueo %S."            >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=No se puede truncar el archivo de spool %S."      >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=No se puede encontrar el archivo de spool de correo." >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=No se puede analizar el archivo de spool %S. El archivo puede estar corrupto o no es válido." >> chrome\es-AR\locale\es-AR\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                              >> chrome\es-AR\locale\es-AR\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="       >> localization\es-AR\messenger\accountManager.ftl
%lecho% "    .label = Añadir una cuenta de Movemail…" >> localization\es-AR\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                          >> localization\es-AR\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="                 >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .label = Cuenta de Movemail…"            >> localization\es-AR\messenger\menubar.ftl
%lecho% "    .accesskey = M"                          >> localization\es-AR\messenger\menubar.ftl
