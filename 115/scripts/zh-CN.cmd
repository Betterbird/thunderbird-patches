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
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="                                   >> localization\zh-CN\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = 不显示消息标签"                                     >> localization\zh-CN\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                                     >> localization\zh-CN\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = 显示一个或多个消息标签，右键单击以清除选中的单个标签。" >> localization\zh-CN\messenger\about3Pane.ftl

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
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="       >> localization\zh-CN\messenger\menubar.ftl
%lecho% "    .label = 在所有文件夹启用多行视图" >> localization\zh-CN\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "    .label = HTML 或纯文本" >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = 如果邮件中有样式则转为 HTML 发送，否则以纯文本发送。" >> localization\zh-CN\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = HTML 或纯文本"             >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/zh-CN/file/e61e1a64227e0b4e9d26e6f38fd6a4b04f6a2831/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=无法打开邮件缓冲文件 %%S。" >> chrome\zh-CN\locale\zh-CN\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=无法创建锁文件 %%S。在邮件缓冲文件夹中创建锁文件是必要的。在大多系统中，将缓冲文件夹权限设置为 01777 即可。" >> chrome\zh-CN\locale\zh-CN\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=无法删除锁文件 %%S。"          >> chrome\zh-CN\locale\zh-CN\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=无法截除缓冲文件 %%S。" >> chrome\zh-CN\locale\zh-CN\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=无法定位邮件缓冲文件。"     >> chrome\zh-CN\locale\zh-CN\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=无法解析缓冲文件 %%S。文件可能损坏或者无效。" >> chrome\zh-CN\locale\zh-CN\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                  >> chrome\zh-CN\locale\zh-CN\messenger\messenger.properties

%lecho% "account-action-add-movemail-account =" >> localization\zh-CN\messenger\accountManager.ftl
%lecho% "    .label = 新建 Movemail 账户…"       >> localization\zh-CN\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                    >> localization\zh-CN\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="           >> localization\zh-CN\messenger\menubar.ftl
%lecho% "    .label = Movemail 账户…"           >> localization\zh-CN\messenger\menubar.ftl
%lecho% "    .accesskey = M"                    >> localization\zh-CN\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=未读: %%S"   >> chrome\zh-CN\locale\zh-CN\messenger\messenger.properties
%lecho% "selectedMsgStatus=已选: %%S" >> chrome\zh-CN\locale\zh-CN\messenger\messenger.properties
%lecho% "totalMsgStatus=总计: %%S"    >> chrome\zh-CN\locale\zh-CN\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="            >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "    .label = 显示垂直标签页"         >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"               >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="  >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "    .label = 在消息内容前列出附件列表" >> localization\zh-CN\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"               >> localization\zh-CN\messenger\preferences\preferences.ftl
