:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=增加一个新的组" >> chrome\zh-CN\locale\zh-CN\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"初始启动文件夹\">" >> chrome\zh-CN\locale\zh-CN\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"不显示消息标签\">" >> chrome\zh-CN\locale\zh-CN\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"显示一个或多个消息标签，右键单击以清除选中的单个标签。\">" >> chrome\zh-CN\locale\zh-CN\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "    .label = 启用加密消息搜索（将在本地存储被解密的消息副本）" >> localization\zh-CN\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files =" >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = 最近的文件…" >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files =" >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = 附加最近的文件…" >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"在所有文件夹启用多行视图\">" >> chrome\zh-CN\locale\zh-CN\messenger\messenger.dtd

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "    .label = FIXME: Plain Text or HTML" >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = 若訊息內容未使用樣式，可用純文字格式寄出。FIXME: 否则，仅发送 HTML - Otherwise, send HTML only。" >> localization\zh-CN\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = FIXME: Plain Text or HTML" >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = FIXME O"               >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl

%lecho% "details-notification-incompatible-link = 更多信息" >> localization\zh-CN\toolkit\about\aboutAddons.ftl

:: Fix the horrible mess TB made in https://bugzilla.mozilla.org/show_bug.cgi?id=1775273
sed -i -e 's/spaces-pinned-button-menuitem-mail/spaces-pinned-button-menuitem-mail2/' localization\zh-CN\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-address-book/spaces-pinned-button-menuitem-address-book2/' localization\zh-CN\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-calendar/spaces-pinned-button-menuitem-calendar2/' localization\zh-CN\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-tasks/spaces-pinned-button-menuitem-tasks2/' localization\zh-CN\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-chat/spaces-pinned-button-menuitem-chat2/' localization\zh-CN\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-settings/spaces-pinned-button-menuitem-settings2/' localization\zh-CN\messenger\messenger.ftl

sed -i -e 's/spaces-toolbar-button-mail.title/spaces-toolbar-button-mail2.title/' localization\zh-CN\messenger\messenger.ftl
sed -i -e 's/spaces-toolbar-button-address-book.title/spaces-toolbar-button-address-book2.title/' localization\zh-CN\messenger\messenger.ftl
sed -i -e 's/spaces-toolbar-button-calendar.title/spaces-toolbar-button-calendar2.title/' localization\zh-CN\messenger\messenger.ftl
sed -i -e 's/spaces-toolbar-button-tasks.title/spaces-toolbar-button-tasks2.title/' localization\zh-CN\messenger\messenger.ftl
sed -i -e 's/spaces-toolbar-button-chat.title/spaces-toolbar-button-chat2.title/' localization\zh-CN\messenger\messenger.ftl
