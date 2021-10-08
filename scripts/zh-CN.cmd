:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Sadly its output is windows-1252 and we need UTF-8.
set icv=iconv -f windows-1252 -t utf-8

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"会话\">" >> chrome\zh-cn\locale\zh-cn\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"显示本条消息的相关会话\">" | %icv% >> chrome\zh-cn\locale\zh-cn\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"转发为\">" >> chrome\zh-cn\locale\zh-cn\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"解密到文件夹\">" | %icv% >> chrome\zh-cn\locale\zh-cn\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"Y\">" >> chrome\zh-cn\locale\zh-cn\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"不显示消息标签\">" | %icv% >> chrome\zh-cn\locale\zh-cn\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"显示1个或多个消息标签。邮件清除选中的单个标签。\">" | %icv% >> chrome\zh-cn\locale\zh-cn\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\zh-cn\messenger\preferences\preferences.ftl
%lecho% "    .label = 启用加密消息搜索（需在本地保留解密消息副本）" | %icv% >> localization\zh-cn\messenger\preferences\preferences.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"在所有文件夹启用多行视图\">" | %icv% >> chrome\zh-cn\locale\zh-cn\messenger\messenger.dtd
