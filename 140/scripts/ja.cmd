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

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="     >> localization\ja\messenger\messenger.ftl
%lecho% "    .label = ヘッダーの編集..."         >> localization\ja\messenger\messenger.ftl
%lecho% "    .accesskey = H"                  >> localization\ja\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = ヘッダーの編集" >> localization\ja\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = キャンセル"    >> localization\ja\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = 復元"      >> localization\ja\messenger\messenger.ftl
%lecho% "    .title = 元の値を表示"            >> localization\ja\messenger\messenger.ftl
%lecho% "msg-edit-update-button = 更新"       >> localization\ja\messenger\messenger.ftl

:: Original strings:
:: quick-filter-bar-negate =
::     .title = Right-click or Ctrl+Enter on a button negates the result.
::       For the text and tag filter, any negated button creates an AND condition.
::       When the tag filter is negated, selecting a tag button adds respective messages to the list of untagged messages.
::       Examples:
::       • [Starred] and [Tags] negated: Show all messages which are Not ‘Starred’ AND Not ‘Tagged’.
::       • [Subject] negated and [Body] selected: Show all messages where ‘Subject’ Does Not Contain “word” AND ‘Body’ Contains “word”.
::       • [Any of] with [Important] negated and [Work] and [Personal] selected:
::       Show all tagged messages which Do Not have the ‘Important’ tag AND which have the ‘Work’ OR the ‘Personal’ tag.
%lecho% "quick-filter-bar-negate ="                                                               >> localization\ja\messenger\about3Pane.ftl
%lecho% "    .title = ボタン上で右クリックまたは Ctrl+Enter を押すと結果が無効になります。"                     >> localization\ja\messenger\about3Pane.ftl
%lecho% "      テキストフィルターとタグフィルターでは無効にしたボタンは AND 条件を作ります。"                         >> localization\ja\messenger\about3Pane.ftl
%lecho% "      タグフィルターを無効にしたとき、タグボタンを選択するとそれぞれのメッセージがタグなしリストに追加されます。"     >> localization\ja\messenger\about3Pane.ftl
%lecho% "      例："                                                                               >> localization\ja\messenger\about3Pane.ftl
%lecho% "      • 「スター付き」と「タグ付き」を無効にした場合: 「スター付き」でも「タグ付き」でもないメッセージを表示します。"  >> localization\ja\messenger\about3Pane.ftl
%lecho% "      • 「件名」を無効にして、「本文」が選択されている場合： 「件名」にワードが含まれておらず、かつ「本文」にワードが含まれているメッセージをすべて表示します。" >> localization\ja\messenger\about3Pane.ftl
%lecho% "      • 「いずれかを含む」で [重要] を無効にして、[仕事] と [プライベート] が選択されている場合："         >> localization\ja\messenger\about3Pane.ftl
%lecho% "      [重要] タグがなく、かつ [仕事] タグまたは [プライベート] タグがあるタグ付きメッセージをすべて表示します。" >> localization\ja\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="        >> localization\ja\messenger\messenger.ftl
%lecho% "    .label = スレッドなし"                  >> localization\ja\messenger\messenger.ftl
%lecho% "    .accesskey = U"                     >> localization\ja\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading =" >> localization\ja\messenger\messenger.ftl
%lecho% "    .label = 元のスレッドに復元"            >> localization\ja\messenger\messenger.ftl
%lecho% "    .accesskey = R"                     >> localization\ja\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="          >> localization\ja\messenger\accountSettings.ftl
%lecho% "  .label = アカウントを無効化する" >> localization\ja\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="                                        >> localization\ja\messenger\about3Pane.ftl
%lecho% "    .label = アドレス帳と一致"                                                   >> localization\ja\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = アドレス帳の表示名（で始まるもの）、またはニックネーム（完全）と一致したもの" >> localization\ja\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\ja\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\ja\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\ja\locale\ja\messenger\search-attributes.properties

:: New in 140:

:: Original strings:
:: menu-view-layout-horizontal =
::    .label = Horizontal View
::    .accesskey = z
%lecho% "menu-view-layout-horizontal =" >> localization\ja\messenger\menubar.ftl
%lecho% "    .label = 横表示"            >> localization\ja\messenger\menubar.ftl
%lecho% "    .accesskey = z"            >> localization\ja\messenger\menubar.ftl

:: Original strings:
:: <!ENTITY storeOnUpdated.label     "Store updated articles">
:: <!ENTITY storeOnUpdated.accesskey "u">
:: <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
:: <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
:: <!ENTITY storeWebPageArchive.accesskey "w">
%lecho% "<!ENTITY storeOnUpdated.label \"更新された記事を保存する\">" >> chrome\ja\locale\ja\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdated.accesskey \"u\">"                >> chrome\ja\locale\ja\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeOnUpdatedInfo.label \""'&lt;updated&gt;'" タグを含む Atom または JSON フィードに対応します。発信元が値を変更した場合は、重複ではなく新しい記事として保存します。\">" >> chrome\ja\locale\ja\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.label \"記事と一緒にウェブページのアーカイブを保存する\">" >> chrome\ja\locale\ja\messenger-newsblog\feed-subscriptions.dtd
%lecho% "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome\ja\locale\ja\messenger-newsblog\feed-subscriptions.dtd

:: Original strings:
:: run-filters-on-incoming-msgs =
::   .label = Run filters on incoming messages
%lecho% "run-filters-on-incoming-msgs ="         >> localization\ja\messenger\folderprops.ftl
%lecho% "  .label = 新着メッセージにフィルターを適用する" >> localization\ja\messenger\folderprops.ftl

:: Original strings:
:: carddav-directory-sync-warning =
::    CardDAV: Some data dropped was by the server, please check the Error Console for details
::carddav-directory-sync-failed =
::    CardDAV: Synchronisation with the server failed, please check the Error Console for details
%lecho% "carddav-directory-sync-warning =" >> localization\ja\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: サーバーによって一部のデータが削除されました。詳細はエラーコンソールをご確認ください" >> localization\ja\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "carddav-directory-sync-failed =" >> localization\ja\messenger\addressbook\abCardDAVProperties.ftl
%lecho% "    CardDAV: サーバーとの同期に失敗しました。詳細はエラーコンソールをご確認ください" >> localization\ja\messenger\addressbook\abCardDAVProperties.ftl
