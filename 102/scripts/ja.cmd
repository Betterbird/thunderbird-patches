:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=新しいグループを追加します" >> chrome\ja\locale\ja\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"起動フォルダー\">" >> chrome\ja\locale\ja\messenger\messenger.dtd

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
%lecho% "menuitem-recent-files ="            >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = 最近使用したファイル..."         >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="    >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = 最近使用したファイルを添付..." >> localization\ja\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"すべてのフォルダーで複数行表示\">" >> chrome\ja\locale\ja\messenger\messenger.dtd

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .label = プレーンテキスト形式または HTML 形式" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = メッセージ内にスタイル書式が使われていない場合はプレーンテキスト形式で送信します。それ以外の場合は、HTML 形式のみで送信します。" >> localization\ja\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = プレーンテキスト形式または HTML 形式" >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\ja\messenger\messengercompose\messengercompose.ftl

%lecho% "details-notification-incompatible-link = 詳細情報" >> localization\ja\toolkit\about\aboutAddons.ftl

:: Fix the horrible mess TB made in https://bugzilla.mozilla.org/show_bug.cgi?id=1775273
sed -i -e 's/spaces-pinned-button-menuitem-mail/spaces-pinned-button-menuitem-mail2/' localization\ja\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-address-book/spaces-pinned-button-menuitem-address-book2/' localization\ja\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-calendar/spaces-pinned-button-menuitem-calendar2/' localization\ja\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-tasks/spaces-pinned-button-menuitem-tasks2/' localization\ja\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-chat/spaces-pinned-button-menuitem-chat2/' localization\ja\messenger\messenger.ftl
sed -i -e 's/spaces-pinned-button-menuitem-settings/spaces-pinned-button-menuitem-settings2/' localization\ja\messenger\messenger.ftl
