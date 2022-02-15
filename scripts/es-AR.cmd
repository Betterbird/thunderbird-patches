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
:: dock-options-show-badge =
::     .label = Show badge icon
::     .accesskey = b
:: -- Already correct in the language pack --

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Vista multilínea en todas las carpetas\">" >> chrome\es-AR\locale\es-AR\messenger\messenger.dtd

:: Fix mess from https://bugzilla.mozilla.org/show_bug.cgi?id=1728893#c24
:: -- Already correct in the language pack --

:: Fix more mess from bug 1734933 and bug 1718411.
:: -- Already correct in the language pack --

:: Fix more mess from bug 1753824.
%lecho% "attachment-bucket-count = { $count ->"     >> localization\es-AR\messenger\messengercompose\messengercompose.ftl
%lecho% "    [1]      { $count } archivo adjunto"   >> localization\es-AR\messenger\messengercompose\messengercompose.ftl
%lecho% "    *[other] { $count } archivos adjuntos" >> localization\es-AR\messenger\messengercompose\messengercompose.ftl
%lecho% "}"                                         >> localization\es-AR\messenger\messengercompose\messengercompose.ftl

:: And more strings from bug 1724090.
:: -- Already correct in the language pack --
