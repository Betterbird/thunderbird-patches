:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"会话\">" >> chrome\zh-CN\locale\zh-CN\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"显示本条消息的相关会话\">" >> chrome\zh-CN\locale\zh-CN\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"转发为\">" >> chrome\zh-CN\locale\zh-CN\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"解密到文件夹\">" >> chrome\zh-CN\locale\zh-CN\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"是\">" >> chrome\zh-CN\locale\zh-CN\messenger\messenger.dtd
:: decryptToFolder.title=Confirm Decrypt
:: decryptToFolder.desc=This will decrypt messages to a folder which is not local. Are you sure you want to continue?
:: decryptToFolder.dontAsk.label=Don't ask me again.
%lecho% "decryptToFolder.title=确认解密" >> chrome\zh-CN\locale\zh-CN\messenger\messenger.properties
%lecho% "decryptToFolder.desc=这会将消息解密到非本地文件夹，你确定要继续吗？" >> chrome\zh-CN\locale\zh-CN\messenger\messenger.properties
%lecho% "decryptToFolder.dontAsk.label=不再询问我" >> chrome\zh-CN\locale\zh-CN\messenger\messenger.properties

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
%lecho% "menuitem-recent-files ="                   >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = 最近的文件…" >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="           >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = 附加最近的文件…" >> localization\zh-CN\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: dock-options-show-badge =
::     .label = Show badge icon
::     .accesskey = b
:: Will need to translate these. "Icon" is usually "Symbol" in German and "badge" was never translated. Good luck to the translators.
:: "Badge icon" already seems to be a misnomer.
%lecho% "dock-options-show-badge =" >> localization\zh-CN\messenger\preferences\dock-options.ftl
%lecho% "    .label = 显示通知标记(M)" >> localization\zh-CN\messenger\preferences\dock-options.ftl
%lecho% "    .accesskey = M" >> localization\zh-CN\messenger\preferences\dock-options.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"在所有文件夹启用多行视图\">" >> chrome\zh-CN\locale\zh-CN\messenger\messenger.dtd

:: Fix mess from https://bugzilla.mozilla.org/show_bug.cgi?id=1728893#c24
sed -i -e 's/return-receipt-checkbox/return-receipt-checkbox-control/'       localization\zh-CN\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-leave-radio/receipt-leave-radio-control/'               localization\zh-CN\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-move-radio/receipt-move-radio-control/'                 localization\zh-CN\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-return-never-radio/receipt-return-never-radio-control/' localization\zh-CN\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-return-some-radio/receipt-return-some-radio-control/'   localization\zh-CN\messenger\preferences\receipts.ftl
sed -i -e 's/receipt-not-to-cc/receipt-not-to-cc-label/'                     localization\zh-CN\messenger\preferences\receipts.ftl
sed -i -e 's/sender-outside-domain/sender-outside-domain-label/'             localization\zh-CN\messenger\preferences\receipts.ftl
sed -i -e 's/other-cases-label/other-cases-text-label/'                      localization\zh-CN\messenger\preferences\receipts.ftl

:: Fix more mess from bug 1734933 and bug 1718411.
:: -- Already correct in the language pack --
:: https://searchfox.org/l10n/source/zh-CN/mail/messenger/preferences/preferences.ftl

:: And more strings from bug 1724090.
:: -- Already correct in the language pack --
:: https://searchfox.org/l10n/search?q=calendar-print-back-button&path=&case=false&regexp=false

:: Fix more mess from bug 1753824.
%lecho% "attachment-bucket-count = { $count ->"  >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "    [1]      { $count } 个附件"   >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "    *[other] { $count } 个附件" >> localization\fr\messenger\messengercompose\messengercompose.ftl
%lecho% "}"                                      >> localization\fr\messenger\messengercompose\messengercompose.ftl