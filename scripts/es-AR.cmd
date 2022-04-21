:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"Conversación\">" >> chrome\es-AR\locale\es-AR\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"Mostrar conversación del mensaje seleccionado\">" >> chrome\es-AR\locale\es-AR\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"Reenviar como\">" >> chrome\es-AR\locale\es-AR\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"Descifrar a carpeta\">" >> chrome\es-AR\locale\es-AR\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"D\">" >> chrome\es-AR\locale\es-AR\messenger\messenger.dtd
:: decryptToFolder.title=Confirm Decrypt
:: decryptToFolder.desc=This will decrypt messages to a folder which is not local. Are you sure you want to continue?
:: decryptToFolder.dontAsk.label=Don't ask me again.
%lecho% "decryptToFolder.title=Confirmar desciframiento" >> chrome\es-AR\locale\es-AR\messenger\messenger.properties
%lecho% "decryptToFolder.desc=Esto descifrará los mensajes en una carpeta que no es local. Está seguro de que quiere continuar?" >> chrome\es-AR\locale\es-AR\messenger\messenger.properties
%lecho% "decryptToFolder.dontAsk.label=No volver a preguntarme." >> chrome\es-AR\locale\es-AR\messenger\messenger.properties

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

:: Fix mess from bug 1764806, hard-coded brand-names
sed -i -e 's/ Thunderbird / Betterbird /' localization\es-AR\messenger\openpgp\keyWizard.ftl
sed -i -e 's/ Thunderbird / Betterbird /' localization\es-AR\messenger\openpgp\openpgp.ftl
