# Script will only work if Windows system locale is set to UTF-8 !!

# Fix strings in appstrings.properties.
sed -i -e 's/Thunderbird/Betterbird/' chrome/zh-CN/locale/zh-CN/messenger/appstrings.properties

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=增加一个新的组" >> chrome/zh-CN/locale/zh-CN/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"初始启动文件夹\">" >> chrome/zh-CN/locale/zh-CN/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="                                   >> localization/zh-CN/messenger/about3Pane.ftl
echo "    .tooltiptext = 不显示消息标签"                                     >> localization/zh-CN/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="                                     >> localization/zh-CN/messenger/about3Pane.ftl
echo "    .tooltiptext = 显示一个或多个消息标签，右键单击以清除选中的单个标签。" >> localization/zh-CN/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label =" >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .label = 启用加密消息搜索（将在本地存储被解密的消息副本）" >> localization/zh-CN/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files =" >> localization/zh-CN/messenger/messengercompose/messengercompose.ftl
echo "    .label = 最近的文件…" >> localization/zh-CN/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files =" >> localization/zh-CN/messenger/messengercompose/messengercompose.ftl
echo "    .label = 附加最近的文件…" >> localization/zh-CN/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="       >> localization/zh-CN/messenger/menubar.ftl
echo "    .label = 在所有文件夹启用多行视图" >> localization/zh-CN/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option =" >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .label = HTML 或纯文本"          >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = 如果邮件中有样式则转为 HTML 发送，否则以纯文本发送。" >> localization/zh-CN/messenger/preferences/preferences.ftl

echo "compose-send-plain-or-html-menu-item =" >> localization/zh-CN/messenger/messengercompose/messengercompose.ftl
echo "    .label = HTML 或纯文本"             >> localization/zh-CN/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = O"                     >> localization/zh-CN/messenger/messengercompose/messengercompose.ftl

# Movemail
# Strings from https://hg.mozilla.org/l10n-central/zh-CN/file/e61e1a64227e0b4e9d26e6f38fd6a4b04f6a2831/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=无法打开邮件缓冲文件 %S。" >> chrome/zh-CN/locale/zh-CN/messenger/localMsgs.properties
echo "movemailCantCreateLock=无法创建锁文件 %S。在邮件缓冲文件夹中创建锁文件是必要的。在大多系统中，将缓冲文件夹权限设置为 01777 即可。" >> chrome/zh-CN/locale/zh-CN/messenger/localMsgs.properties
echo "movemailCantDeleteLock=无法删除锁文件 %S。"          >> chrome/zh-CN/locale/zh-CN/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=无法截除缓冲文件 %S。" >> chrome/zh-CN/locale/zh-CN/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=无法定位邮件缓冲文件。"     >> chrome/zh-CN/locale/zh-CN/messenger/localMsgs.properties
echo "movemailCantParseSpool=无法解析缓冲文件 %S。文件可能损坏或者无效。" >> chrome/zh-CN/locale/zh-CN/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                  >> chrome/zh-CN/locale/zh-CN/messenger/messenger.properties

echo "account-action-add-movemail-account =" >> localization/zh-CN/messenger/accountManager.ftl
echo "    .label = 新建 Movemail 账户…"       >> localization/zh-CN/messenger/accountManager.ftl
echo "    .accesskey = M"                    >> localization/zh-CN/messenger/accountManager.ftl
echo "file-new-movemail-account ="           >> localization/zh-CN/messenger/menubar.ftl
echo "    .label = Movemail 账户…"           >> localization/zh-CN/messenger/menubar.ftl
echo "    .accesskey = M"                    >> localization/zh-CN/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=未读: %S"   >> chrome/zh-CN/locale/zh-CN/messenger/messenger.properties
echo "selectedMsgStatus=已选: %S" >> chrome/zh-CN/locale/zh-CN/messenger/messenger.properties
echo "totalMsgStatus=总计: %S"    >> chrome/zh-CN/locale/zh-CN/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="            >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .label = 显示垂直标签页"       >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .accesskey = v"               >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="  >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .label = 在消息内容前列出附件列表" >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .accesskey = p"               >> localization/zh-CN/messenger/preferences/preferences.ftl

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
echo "restore-tabs-session-label ="  >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .value = 启动时恢复标签页：" >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="            >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .label = 所有标签页"        >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .accesskey = t"            >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="         >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .label = 系统标签页"        >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .accesskey = s"            >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="             >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .label = 空标签页"          >> localization/zh-CN/messenger/preferences/preferences.ftl
echo "    .accesskey = n"            >> localization/zh-CN/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread =" >> localization/zh-CN/messenger/menubar.ftl
echo "    .label = 宽线程视图"        >> localization/zh-CN/messenger/menubar.ftl
echo "    .accesskey = T"            >> localization/zh-CN/messenger/menubar.ftl
echo "menu-view-layout-stacked ="    >> localization/zh-CN/messenger/menubar.ftl
echo "    .label = 堆叠视图"          >> localization/zh-CN/messenger/menubar.ftl
echo "    .accesskey = S"            >> localization/zh-CN/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="   >> localization/zh-CN/messenger/messenger.ftl
echo "    .label = 编辑邮件头..."         >> localization/zh-CN/messenger/messenger.ftl
echo "    .accesskey = H"                >> localization/zh-CN/messenger/messenger.ftl
echo "msg-edit-dialog-title = 邮件头编辑" >> localization/zh-CN/messenger/messenger.ftl
echo "msg-edit-cancel-button = 取消"     >> localization/zh-CN/messenger/messenger.ftl
echo "msg-edit-restore-button = 恢复"    >> localization/zh-CN/messenger/messenger.ftl
echo "    .title = 显示原始值"            >> localization/zh-CN/messenger/messenger.ftl
echo "msg-edit-update-button = 更新"     >> localization/zh-CN/messenger/messenger.ftl

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
echo "quick-filter-bar-negate ="                                             >> localization/zh-CN/messenger/about3Pane.ftl
echo "    .title = 在按钮上右键单击或按 Ctrl+Enter 可反向过滤"                 >> localization/zh-CN/messenger/about3Pane.ftl
echo "      在文本过滤和标签过滤中，任何被反选的按钮都会创建 AND 条件"           >> localization/zh-CN/messenger/about3Pane.ftl
echo "      当标签过滤器被反选时，选择标签按钮会将对应邮件添加至无标签的邮件列表" >> localization/zh-CN/messenger/about3Pane.ftl
echo "      例如："                                                           >> localization/zh-CN/messenger/about3Pane.ftl
echo "      • 「星标」和「标签」被反选时：显示所有「无星标」且「无标签」的邮件"          >> localization/zh-CN/messenger/about3Pane.ftl
echo "      • 「主题」被反选且「正文」被选中时：显示所有主题不包含「关键词」且正文包含「关键词」的邮件" >> localization/zh-CN/messenger/about3Pane.ftl
echo "      • 「任意匹配」下反选「重要」并选中「工作」和「私人」："                     >> localization/zh-CN/messenger/about3Pane.ftl
echo "      显示所有不含「重要」标签且包含「工作」或「私人」标签的邮件"               >> localization/zh-CN/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="        >> localization/zh-CN/messenger/messenger.ftl
echo "    .label = 取消话题关联"               >> localization/zh-CN/messenger/messenger.ftl
echo "    .accesskey = U"                     >> localization/zh-CN/messenger/messenger.ftl
echo "mail-context-reset-message-threading =" >> localization/zh-CN/messenger/messenger.ftl
echo "    .label = 恢复原始话题结构"           >> localization/zh-CN/messenger/messenger.ftl
echo "    .accesskey = R"                     >> localization/zh-CN/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="   >> localization/zh-CN/messenger/accountSettings.ftl
echo "  .label = 账户已禁用" >> localization/zh-CN/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="                             >> localization/zh-CN/messenger/about3Pane.ftl
echo "    .label = 匹配地址簿"                                           >> localization/zh-CN/messenger/about3Pane.ftl
echo "    .tooltiptext = 根据地址簿中的显示名称（开头）或昵称（精确）进行匹配" >> localization/zh-CN/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/zh-CN/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/zh-CN/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/zh-CN/locale/zh-CN/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal =" >> localization/zh-CN/messenger/menubar.ftl
echo "    .label = 水平视图"          >> localization/zh-CN/messenger/menubar.ftl
echo "    .accesskey = z"            >> localization/zh-CN/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"保存已更新的文章\">" >> chrome/zh-CN/locale/zh-CN/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"u\">"           >> chrome/zh-CN/locale/zh-CN/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"对于包含 &lt;updated&gt; 标签的 Atom 或 JSON 订阅源，如果发布者更改了该值，则保存文章，而非将其视作重复项。\">" >> chrome/zh-CN/locale/zh-CN/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"将网页的存档与文章一起保存\">" >> chrome/zh-CN/locale/zh-CN/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/zh-CN/locale/zh-CN/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="   >> localization/zh-CN/messenger/folderprops.ftl
echo "  .label = 对收到的邮件运行过滤器" >> localization/zh-CN/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/zh-CN/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV：服务器丢弃了部分数据，请查看错误控制台以获取详细信息" >> localization/zh-CN/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/zh-CN/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV：与服务器的同步失败，请查看错误控制台以获取详细信息" >> localization/zh-CN/messenger/addressbook/abCardDAVProperties.ftl

# Strings for bug 1972710:
# folder-pane-context-reset-sort =
#   .label = Reset Folder Order
#   .accesskey = R
echo "folder-pane-context-reset-sort =" >> localization/zh-CN/messenger/about3Pane.ftl
echo "  .label = 重置文件夹顺序"          >> localization/zh-CN/messenger/about3Pane.ftl
echo "  .accesskey = R"                 >> localization/zh-CN/messenger/about3Pane.ftl

# Strings for searching all mail accounts:
# search-all-mail-accounts =
#   .label = Search all mail accounts
#   .accesskey = m
echo "search-all-mail-accounts =" >> localization/zh-CN/messenger/messenger.ftl
echo "  .label = 搜索所有邮件账户"   >> localization/zh-CN/messenger/messenger.ftl
echo "  .accesskey = m"           >> localization/zh-CN/messenger/messenger.ftl

# New Gloda facets:
# gloda.message.attr._subjectMatches.facetNameLabel=Subject
# gloda.message.attr._bodyMatches.facetNameLabel=Body
echo "gloda.message.attr._subjectMatches.facetNameLabel=主题" >> chrome/zh-CN/locale/zh-CN/messenger/gloda.properties
echo "gloda.message.attr._bodyMatches.facetNameLabel=消息体"  >> chrome/zh-CN/locale/zh-CN/messenger/gloda.properties

# Categories:
echo "about-addressbook-details-categories-header = 分类" >> localization/zh-CN/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-header-categories2 = 分类" >> localization/zh-CN/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = 按分类排序"                               >> localization/zh-CN/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-column-label-categories2 ="      >> localization/zh-CN/messenger/addressbook/aboutAddressBook.ftl
echo "  .label = 分类"                                    >> localization/zh-CN/messenger/addressbook/aboutAddressBook.ftl
echo "about-addressbook-cell-categories2 ="              >> localization/zh-CN/messenger/addressbook/aboutAddressBook.ftl
echo "  .aria-label = 分类"                               >> localization/zh-CN/messenger/addressbook/aboutAddressBook.ftl
echo "  .title = { \$title }"                            >> localization/zh-CN/messenger/addressbook/aboutAddressBook.ftl
echo "vcard-categories-header = 分类"                     >> localization/zh-CN/messenger/addressbook/vcard.ftl
echo "vcard-category-add = 添加分类"                       >> localization/zh-CN/messenger/addressbook/vcard.ftl
echo "vcard-category-input-label = 分类"                  >> localization/zh-CN/messenger/addressbook/vcard.ftl
echo "vcard-category-input-title = 分类名称"               >> localization/zh-CN/messenger/addressbook/vcard.ftl
echo "Categories=分类" >> chrome/zh-CN/locale/zh-CN/messenger/search-attributes.properties
