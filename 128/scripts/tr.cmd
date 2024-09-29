:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Yeni bir grup ekle" >> chrome\tr\locale\tr\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Başlangıç ​​klasörü\">" >> chrome\tr\locale\tr\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="            >> localization\tr\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = İletileri etiketsiz göster" >> localization\tr\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="              >> localization\tr\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Bir veya daha fazla etikete sahip mesajları göster. Bireysel etiket seçimini temizlemek için sağ tıklayın." >> localization\tr\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label ="                                                                      >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .label = Şifrelenmiş mesajlarda aramayı etkinleştir (şifresi çözülmüş bir kopyayı yerel olarak saklar)" >> localization\tr\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="               >> localization\tr\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Son dosya…"               >> localization\tr\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="       >> localization\tr\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = En son dosya(lar)ı ekle…" >> localization\tr\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                  >> localization\tr\messenger\menubar.ftl
%lecho% "    .label = Tüm klasörlerde çok satırlı ekran" >> localization\tr\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option ="    >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .label = HTML veya düz metin"       >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = İletide herhangi bir biçem kullanılmıyorsa düz metin gönder. Aksi takdirde yalnızca HTML gönder." >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-menu-item =" >> localization\tr\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = HTML veya düz metin"       >> localization\tr\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = o"                     >> localization\tr\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Start at https://hg.mozilla.org/l10n-central/tr/, find usable changeset. 
:: Strings from https://hg.mozilla.org/l10n-central/tr/file/d76ab99308e2873a3865b65eab4d78b79c6b0636/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Posta biriktirme dosyası %%S açılamıyor." >> chrome\tr\locale\tr\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=%%S kilit dosyası oluşturulamıyor. E-posta taşınması için posta biriktirme dizini içindek kilit dosyaları oluşturmak gereklidir. Çoğu işletim sistemi için biriktime dizini modunu 01777 yapmalısınız." >> chrome\tr\locale\tr\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Kilit dosyası %%S silinemedi."               >> chrome\tr\locale\tr\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Biriktirme dosyası %%S kesilemiyor."  >> chrome\tr\locale\tr\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Biriktirme dosyası bulunamıyor."          >> chrome\tr\locale\tr\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Biriktirme dosyası %%S ayrıştırılamadı. Dosya bozuk veya geçersiz olabilir." >> chrome\tr\locale\tr\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                  >> chrome\tr\locale\tr\messenger\messenger.properties

%lecho% "account-action-add-movemail-account =" >> localization\tr\messenger\accountManager.ftl
%lecho% "    .label = Movemail hesabı ekleyin…" >> localization\tr\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                    >> localization\tr\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="           >> localization\tr\messenger\menubar.ftl
%lecho% "    .label = Mail hesabını taşı…"      >> localization\tr\messenger\menubar.ftl
%lecho% "    .accesskey = M"                    >> localization\tr\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Okunmamış: %%S" >> chrome\tr\locale\tr\messenger\messenger.properties
%lecho% "selectedMsgStatus=Seçildi: %%S" >> chrome\tr\locale\tr\messenger\messenger.properties
%lecho% "totalMsgStatus=Toplam: %%S"     >> chrome\tr\locale\tr\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                           >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .label = Sekme çubuğunu dikey olarak göster" >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                              >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                 >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .label = İletinin üzerindeki ekleri göster"  >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = u"                              >> localization\tr\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                    >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .value = Başlangıçta sekmeleri geri yükle :" >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                              >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .label = Tüm sekmeler"                       >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = T"                              >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                           >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .label = Sistem sekmeleri"                   >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                              >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                               >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .label = Hiçbiri"                            >> localization\tr\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = n"                              >> localization\tr\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread ="             >> localization\tr\messenger\menubar.ftl
%lecho% "    .label = Geniş mesaj listesi görünümü" >> localization\tr\messenger\menubar.ftl
%lecho% "    .accesskey = m"                        >> localization\tr\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="                >> localization\tr\messenger\menubar.ftl
%lecho% "    .label = Üst üste bindirilmiş görünüm" >> localization\tr\messenger\menubar.ftl
%lecho% "    .accesskey = S"                        >> localization\tr\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="             >> localization\tr\messenger\messenger.ftl
%lecho% "    .label = Başlıkları düzenle…"            >> localization\tr\messenger\messenger.ftl
%lecho% "    .accesskey = N"                          >> localization\tr\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Başlıkları düzenle"  >> localization\tr\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = İptal"              >> localization\tr\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Eski Haline Getir" >> localization\tr\messenger\messenger.ftl
%lecho% "    .title = Orijinal değeri göster"         >> localization\tr\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Güncelleme"         >> localization\tr\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                                 >> localization\tr\messenger\about3Pane.ftl
%lecho% "    .title = Bir düğmeye sağ tıklamak veya Ctrl+Enter, sonucu geçersiz kılar."                             >> localization\tr\messenger\about3Pane.ftl
%lecho% "      Metin ve etiket filtresi için, olumsuzlanan herhangi bir düğme bir VE koşulu oluşturur."             >> localization\tr\messenger\about3Pane.ftl
%lecho% "      Etiket filtresi negatif olduğunda, bir etiket düğmesi seçildiğinde ilgili mesajlar listeye eklenir." >> localization\tr\messenger\about3Pane.ftl
%lecho% "      Örnekler:"                                                                                           >> localization\tr\messenger\about3Pane.ftl
%lecho% "      • Reddedilen [Takip Edilen] ve [Etiketlenen]: ‹ Takip Edilen › VE ‹ Etiketlenmeyen iletiler ›."      >> localization\tr\messenger\about3Pane.ftl
%lecho% "      • [Konu] reddedildi ve [Mesaj gövdesi] seçildi: ‹ Konu › kısmında « kelime » bulunmayan ve ‹ Mesaj Gövdesi › kısmında « kelime » bulunan mesajlar." >> localization\tr\messenger\about3Pane.ftl
%lecho% "      • [En az bir], [Önemli] olumsuzlanmış ve [Çalışma] ve [Kişisel] seçili:"                             >> localization\tr\messenger\about3Pane.ftl
%lecho% "      ‹ Önemli › etiketi olmayan VE ‹ İş › etiketi VEYA ‹ Kişisel › etiketi olan etiketli mesajlar."       >> localization\tr\messenger\about3Pane.ftl

:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="         >> localization\tr\messenger\messenger.ftl
%lecho% "    .label = Mesajı diziden kaldır"      >> localization\tr\messenger\messenger.ftl
%lecho% "    .accesskey = k"                      >> localization\tr\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="  >> localization\tr\messenger\messenger.ftl
%lecho% "    .label = Orijinal diziyi geri yükle" >> localization\tr\messenger\messenger.ftl
%lecho% "    .accesskey = O"                      >> localization\tr\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="                    >> localization\tr\messenger\accountSettings.ftl
%lecho% "  .label = Hesap devre dışı bırakıldı" >> localization\tr\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook ="                                                                >> localization\tr\messenger\about3Pane.ftl
%lecho% "    .label = Adres Defterini Eşleştir"                                                               >> localization\tr\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Adres defterlerindeki görünen adı (ile başlayan) veya takma adı (tam) eşleştirin" >> localization\tr\messenger\about3Pane.ftl