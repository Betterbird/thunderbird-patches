:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"会話\">" >> chrome\ja\locale\ja\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"選択したメッセージのスレッドを表示します\">" >> chrome\ja\locale\ja\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"転送\">" >> chrome\ja\locale\ja\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"フォルダーの複合化\">" >> chrome\ja\locale\ja\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"Y\">" >> chrome\ja\locale\ja\messenger\messenger.dtd
:: decryptToFolder.title=Confirm Decrypt
:: decryptToFolder.desc=This will decrypt messages to a folder which is not local. Are you sure you want to continue?
:: decryptToFolder.dontAsk.label=Don't ask me again.
%lecho% "decryptToFolder.title=複合化の確認" >> chrome\ja\locale\ja\messenger\messenger.properties
%lecho% "decryptToFolder.desc=これはローカルではないフォルダーにメッセージを復号化するものです。本当にこれを実行してもよいですか？" >> chrome\ja\locale\ja\messenger\messenger.properties
%lecho% "decryptToFolder.dontAsk.label=以後尋ねない" >> chrome\ja\locale\ja\messenger\messenger.properties

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=新しいグループを追加します" >> chrome\ja\locale\ja\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"スタートアップフォルダ\">" >> chrome\ja\locale\ja\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"タグなしのメッセージを表示する\">" >> chrome\ja\locale\ja\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"1つまたは複数のタグを持つメッセージを表示します。右クリックで個々のタグの選択を解除します。\">" >> chrome\ja\locale\ja\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .label = 暗号化されたメッセージの検索を有効にする（復号化されたコピーをローカルに保存する）" >> localization\ja\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="          >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = 最近のファイル..."         >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="  >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = 最近のファイルを添付する..." >> localization\ja\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"すべてのフォルダーでマルチラインビュー\">" >> chrome\ja\locale\ja\messenger\messenger.dtd
