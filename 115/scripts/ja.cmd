:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=新しいグループを追加します" >> chrome\ja\locale\ja\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"起動フォルダー\">" >> chrome\ja\locale\ja\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="        >> localization\ja\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = タグなしのメッセージを表示する" >> localization\ja\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="          >> localization\ja\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = 1つまたは複数のタグを持つメッセージを表示します。右クリックで個々のタグの選択を解除します。" >> localization\ja\messenger\about3Pane.ftl

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
%lecho% "    .label = 最近使用したファイル..."   >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="    >> localization\ja\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = 最近使用したファイルを添付..." >> localization\ja\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="         >> localization\ja\messenger\menubar.ftl
%lecho% "    .label = すべてのフォルダーで複数行表示" >> localization\ja\messenger\menubar.ftl

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

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/ja/file/6ae114401a4cb7736a46e7d99b1ccd241fa7909b/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=メールスプールファイル %%S を開けませんでした。"    >> chrome\ja\locale\ja\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=ロックファイル %%S を作成できませんでした。Movemail が機能するにはメールスプールディレクトリーにロックファイルを作成する必要があります。多くのシステムではスプールディレクトリーのモードを 01777 に設定します。" >> chrome\ja\locale\ja\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=ロックファイル %%S を削除できませんでした。"          >> chrome\ja\locale\ja\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=スプールファイル %%S を整理できませんでした。" >> chrome\ja\locale\ja\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=メールスプールファイルが見つかりませんでした。"      >> chrome\ja\locale\ja\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=スプールファイル %%S をパースできませんでした。ファイルが壊れているか正しくない可能性があります。" >> chrome\ja\locale\ja\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                >> chrome\ja\locale\ja\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="  >> localization\ja\messenger\accountManager.ftl
%lecho% "    .label = Movemail アカウントを追加..."  >> localization\ja\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                     >> localization\ja\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="            >> localization\ja\messenger\menubar.ftl
%lecho% "    .label = Movemail アカウント..."       >> localization\ja\messenger\menubar.ftl
%lecho% "    .accesskey = M"                     >> localization\ja\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=未読数: %%S"   >> chrome\ja\locale\ja\messenger\messenger.properties
%lecho% "selectedMsgStatus=選択数: %%S" >> chrome\ja\locale\ja\messenger\messenger.properties
%lecho% "totalMsgStatus=合計: %%S"      >> chrome\ja\locale\ja\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                  >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .label = タブバーを縦表示にする"           >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                     >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="        >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .label = メッセージの上部に添付ファイルリストを表示する" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = p"                     >> localization\ja\messenger\preferences\preferences.ftl

:: Original strings:
:: restore-tabs-session-label =
::     .value = Restore tabs on startup:
:: restore-all-tabs =
::     .label = All tabs
::     .accesskey = t
:: restore-system-tabs =
::     .label = System tabs
::     .accesskey = s
:: restore-no-tabs =
::     .label = None
::     .accesskey = n
%lecho% "restore-tabs-session-label ="  >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .value = 起動時のタブの復元:" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="            >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .label = すべてのタブ"        >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = t"            >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="         >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .label = システムタブ"         >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"            >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="             >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .label = なし"              >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = n"            >> localization\ja\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread =" >> localization\ja\messenger\menubar.ftl
%lecho% "    .label = ワイドスレッドビュー"   >> localization\ja\messenger\menubar.ftl
%lecho% "    .accesskey = T"            >> localization\ja\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="    >> localization\ja\messenger\menubar.ftl
%lecho% "    .label = スタックビュー"        >> localization\ja\messenger\menubar.ftl
%lecho% "    .accesskey = S"            >> localization\ja\messenger\menubar.ftl
