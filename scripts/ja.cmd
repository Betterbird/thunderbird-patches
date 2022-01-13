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
:: dock-options-show-badge =
::     .label = Show badge icon
::     .accesskey = b
:: -- Already correct in the language pack --

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"すべてのフォルダーでマルチラインビュー\">" >> chrome\ja\locale\ja\messenger\messenger.dtd

:: Fix mess from https://bugzilla.mozilla.org/show_bug.cgi?id=1728893#c24
:: -- Already correct in the language pack --

:: Fix more mess from bug 1734933 and bug 1718411.
%lecho% "type-column-header = ファイルの種類" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "action-column-header = 動作設定" >> localization\ja\messenger\preferences\preferences.ftl

%lecho% "add-web-search-engine =" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "  .label = 追加..."  >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "  .accesskey = A"        >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "add-opensearch-provider-title = OpenSearch プロバイダーの追加" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "add-opensearch-provider-text = 追加する OpenSearch プロバイダーの URL を入力してください。OpenSearch Description ファイルの URL を直接使用するか、このファイルを自動的に発見できる URL を入力してください。" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "adding-opensearch-provider-failed-title = OpenSearch プロバイダーの追加に失敗しました" >> localization\ja\messenger\preferences\preferences.ftl
%lecho% "adding-opensearch-provider-failed-text = { $url } の OpenSearch プロバイダーを追加できませんでした。" >> localization\ja\messenger\preferences\preferences.ftl

:: And more strings from bug 1724090.
%lecho% "calendar-print-back-button = 元の設定へ" >> localization\ja\calendar\calendar-print.ftl
