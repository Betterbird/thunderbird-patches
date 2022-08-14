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

:: Already translated, not yet in the language pack.
%lecho% "language-popup-label =" >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .value = Idioma:"   >> localization\es-AR\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = L"     >> localization\es-AR\messenger\preferences\preferences.ftl

%lecho% "vcard-custom-header = Propiedades personalizadas" >> localization\es-AR\messenger\addressbook\vcard.ftl
%lecho% "vcard-custom-add = Agregar propiedades personalizadas" >> localization\es-AR\messenger\addressbook\vcard.ftl
