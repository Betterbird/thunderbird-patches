# Script will only work if Windows system locale is set to UTF-8 !!

# Original strings:
# groupButtonTooltipText=Add a new group
echo "groupButtonTooltipText=Yeni bir grup ekle" >> chrome/tr/locale/tr/messenger/search.properties

# Original string:
# <!ENTITY folderContextStartupFolder.label "Startup Folder">
echo "<!ENTITY folderContextStartupFolder.label \"Başlangıç ​​klasörü\">" >> chrome/tr/locale/tr/messenger/messenger.dtd

# Original strings:
# quick-filter-bar-untagged-button =
#     .tooltiptext = Show messages with no tags
# quick-filter-bar-tagged-button =
#     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
echo "quick-filter-bar-untagged-button ="            >> localization/tr/messenger/about3Pane.ftl
echo "    .tooltiptext = İletileri etiketsiz göster" >> localization/tr/messenger/about3Pane.ftl
echo "quick-filter-bar-tagged-button ="              >> localization/tr/messenger/about3Pane.ftl
echo "    .tooltiptext = Bir veya daha fazla etikete sahip mesajları göster. Bireysel etiket seçimini temizlemek için sağ tıklayın." >> localization/tr/messenger/about3Pane.ftl

# Original strings:
# enable-gloda-search-encrypted-label =
#     .label = Enable search in encrypted messages (stores decrypted copy locally)
echo "enable-gloda-search-encrypted-label ="                                                                      >> localization/tr/messenger/preferences/preferences.ftl
echo "    .label = Şifrelenmiş mesajlarda aramayı etkinleştir (şifresi çözülmüş bir kopyayı yerel olarak saklar)" >> localization/tr/messenger/preferences/preferences.ftl

# Original strings:
# menuitem-recent-files =
#     .label = Recent File(s)…
# context-menuitem-recent-files =
#     .label = Attach Recent File(s)…
echo "menuitem-recent-files ="               >> localization/tr/messenger/messengercompose/messengercompose.ftl
echo "    .label = Son dosya…"               >> localization/tr/messenger/messengercompose/messengercompose.ftl
echo "context-menuitem-recent-files ="       >> localization/tr/messenger/messengercompose/messengercompose.ftl
echo "    .label = En son dosya(lar)ı ekle…" >> localization/tr/messenger/messengercompose/messengercompose.ftl

# Original strings:
# menu-multi-line-all-folders =
#     .label = Multi-line View On All Folders
echo "menu-multi-line-all-folders ="                  >> localization/tr/messenger/menubar.ftl
echo "    .label = Tüm klasörlerde çok satırlı ekran" >> localization/tr/messenger/menubar.ftl

# Original strings:
# compose-send-plain-or-html-option =
#     .label = Plain Text or HTML
#     .accesskey = O
# compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
echo "compose-send-plain-or-html-option ="    >> localization/tr/messenger/preferences/preferences.ftl
echo "    .label = HTML veya düz metin"       >> localization/tr/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-description = İletide herhangi bir biçem kullanılmıyorsa düz metin gönder. Aksi takdirde yalnızca HTML gönder." >> localization/tr/messenger/preferences/preferences.ftl
echo "compose-send-plain-or-html-menu-item =" >> localization/tr/messenger/messengercompose/messengercompose.ftl
echo "    .label = HTML veya düz metin"       >> localization/tr/messenger/messengercompose/messengercompose.ftl
echo "    .accesskey = o"                     >> localization/tr/messenger/messengercompose/messengercompose.ftl

# Movemail
# Start at https://hg.mozilla.org/l10n-central/tr/, find usable changeset. 
# Strings from https://hg.mozilla.org/l10n-central/tr/file/d76ab99308e2873a3865b65eab4d78b79c6b0636/mail/chrome/messenger/localMsgs.properties
echo "movemailCantOpenSpoolFile=Posta biriktirme dosyası %S açılamıyor." >> chrome/tr/locale/tr/messenger/localMsgs.properties
echo "movemailCantCreateLock=%S kilit dosyası oluşturulamıyor. E-posta taşınması için posta biriktirme dizini içindek kilit dosyaları oluşturmak gereklidir. Çoğu işletim sistemi için biriktime dizini modunu 01777 yapmalısınız." >> chrome/tr/locale/tr/messenger/localMsgs.properties
echo "movemailCantDeleteLock=Kilit dosyası %S silinemedi."               >> chrome/tr/locale/tr/messenger/localMsgs.properties
echo "movemailCantTruncateSpoolFile=Biriktirme dosyası %S kesilemiyor."  >> chrome/tr/locale/tr/messenger/localMsgs.properties
echo "movemailSpoolFileNotFound=Biriktirme dosyası bulunamıyor."          >> chrome/tr/locale/tr/messenger/localMsgs.properties
echo "movemailCantParseSpool=Biriktirme dosyası %S ayrıştırılamadı. Dosya bozuk veya geçersiz olabilir." >> chrome/tr/locale/tr/messenger/localMsgs.properties
echo "serverType-movemail=Unix Movemail"                                  >> chrome/tr/locale/tr/messenger/messenger.properties

echo "account-action-add-movemail-account =" >> localization/tr/messenger/accountManager.ftl
echo "    .label = Movemail hesabı ekleyin…" >> localization/tr/messenger/accountManager.ftl
echo "    .accesskey = M"                    >> localization/tr/messenger/accountManager.ftl
echo "file-new-movemail-account ="           >> localization/tr/messenger/menubar.ftl
echo "    .label = Mail hesabını taşı…"      >> localization/tr/messenger/menubar.ftl
echo "    .accesskey = M"                    >> localization/tr/messenger/menubar.ftl

# Unread/seleted status
echo "unreadMsgStatus=Okunmamış: %S" >> chrome/tr/locale/tr/messenger/messenger.properties
echo "selectedMsgStatus=Seçildi: %S" >> chrome/tr/locale/tr/messenger/messenger.properties
echo "totalMsgStatus=Toplam: %S"     >> chrome/tr/locale/tr/messenger/messenger.properties

# Original strings:
# vertical-tabs-label =
#     .label = Enable vertical tabs
#     .accesskey = v
# attachments-display-top-label =
#     .label = Display attachment list above message
#     .accesskey = p
echo "vertical-tabs-label ="                           >> localization/tr/messenger/preferences/preferences.ftl
echo "    .label = Sekme çubuğunu dikey olarak göster" >> localization/tr/messenger/preferences/preferences.ftl
echo "    .accesskey = v"                              >> localization/tr/messenger/preferences/preferences.ftl
echo "attachments-display-top-label ="                 >> localization/tr/messenger/preferences/preferences.ftl
echo "    .label = İletinin üzerindeki ekleri göster"  >> localization/tr/messenger/preferences/preferences.ftl
echo "    .accesskey = u"                              >> localization/tr/messenger/preferences/preferences.ftl

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
echo "restore-tabs-session-label ="                    >> localization/tr/messenger/preferences/preferences.ftl
echo "    .value = Başlangıçta sekmeleri geri yükle :" >> localization/tr/messenger/preferences/preferences.ftl
echo "restore-all-tabs ="                              >> localization/tr/messenger/preferences/preferences.ftl
echo "    .label = Tüm sekmeler"                       >> localization/tr/messenger/preferences/preferences.ftl
echo "    .accesskey = T"                              >> localization/tr/messenger/preferences/preferences.ftl
echo "restore-system-tabs ="                           >> localization/tr/messenger/preferences/preferences.ftl
echo "    .label = Sistem sekmeleri"                   >> localization/tr/messenger/preferences/preferences.ftl
echo "    .accesskey = s"                              >> localization/tr/messenger/preferences/preferences.ftl
echo "restore-no-tabs ="                               >> localization/tr/messenger/preferences/preferences.ftl
echo "    .label = Hiçbiri"                            >> localization/tr/messenger/preferences/preferences.ftl
echo "    .accesskey = n"                              >> localization/tr/messenger/preferences/preferences.ftl

# Original strings:
# menu-view-layout-widethread =
#     .label = Wide Thread View
#     .accesskey = T
# menu-view-layout-stacked =
#     .label = Stacked View
#     .accesskey = S
echo "menu-view-layout-widethread ="             >> localization/tr/messenger/menubar.ftl
echo "    .label = Geniş mesaj listesi görünümü" >> localization/tr/messenger/menubar.ftl
echo "    .accesskey = m"                        >> localization/tr/messenger/menubar.ftl
echo "menu-view-layout-stacked ="                >> localization/tr/messenger/menubar.ftl
echo "    .label = Üst üste bindirilmiş görünüm" >> localization/tr/messenger/menubar.ftl
echo "    .accesskey = S"                        >> localization/tr/messenger/menubar.ftl

# Original strings:
# other-action-msg-edit-headers =
#     .label = Edit Headers…
#     .accesskey = H
# msg-edit-dialog-title = Edit Headers
# msg-edit-cancel-button = Cancel
# msg-edit-restore-button = Restore
#     .title = Show the original value
# msg-edit-update-button = Update
echo "other-action-msg-edit-headers ="             >> localization/tr/messenger/messenger.ftl
echo "    .label = Başlıkları düzenle…"            >> localization/tr/messenger/messenger.ftl
echo "    .accesskey = N"                          >> localization/tr/messenger/messenger.ftl
echo "msg-edit-dialog-title = Başlıkları düzenle"  >> localization/tr/messenger/messenger.ftl
echo "msg-edit-cancel-button = İptal"              >> localization/tr/messenger/messenger.ftl
echo "msg-edit-restore-button = Eski Haline Getir" >> localization/tr/messenger/messenger.ftl
echo "    .title = Orijinal değeri göster"         >> localization/tr/messenger/messenger.ftl
echo "msg-edit-update-button = Güncelleme"         >> localization/tr/messenger/messenger.ftl

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
echo "quick-filter-bar-negate ="                                                                                 >> localization/tr/messenger/about3Pane.ftl
echo "    .title = Bir düğmeye sağ tıklamak veya Ctrl+Enter, sonucu geçersiz kılar."                             >> localization/tr/messenger/about3Pane.ftl
echo "      Metin ve etiket filtresi için, olumsuzlanan herhangi bir düğme bir VE koşulu oluşturur."             >> localization/tr/messenger/about3Pane.ftl
echo "      Etiket filtresi negatif olduğunda, bir etiket düğmesi seçildiğinde ilgili mesajlar listeye eklenir." >> localization/tr/messenger/about3Pane.ftl
echo "      Örnekler:"                                                                                           >> localization/tr/messenger/about3Pane.ftl
echo "      • Reddedilen [Takip Edilen] ve [Etiketlenen]: ‹ Takip Edilen › VE ‹ Etiketlenmeyen iletiler ›."      >> localization/tr/messenger/about3Pane.ftl
echo "      • [Konu] reddedildi ve [Mesaj gövdesi] seçildi: ‹ Konu › kısmında « kelime » bulunmayan ve ‹ Mesaj Gövdesi › kısmında « kelime » bulunan mesajlar." >> localization/tr/messenger/about3Pane.ftl
echo "      • [En az bir], [Önemli] olumsuzlanmış ve [Çalışma] ve [Kişisel] seçili:"                             >> localization/tr/messenger/about3Pane.ftl
echo "      ‹ Önemli › etiketi olmayan VE ‹ İş › etiketi VEYA ‹ Kişisel › etiketi olan etiketli mesajlar."       >> localization/tr/messenger/about3Pane.ftl

# New in 128:

# Threading on menu:
# mail-context-unthread-message =
#     .label = Unthread Message
#     .accesskey = U
# mail-context-reset-message-threading =
#     .label = Restore Original Threading
#     .accesskey = R
echo "mail-context-unthread-message ="         >> localization/tr/messenger/messenger.ftl
echo "    .label = Mesajı diziden kaldır"      >> localization/tr/messenger/messenger.ftl
echo "    .accesskey = k"                      >> localization/tr/messenger/messenger.ftl
echo "mail-context-reset-message-threading ="  >> localization/tr/messenger/messenger.ftl
echo "    .label = Orijinal diziyi geri yükle" >> localization/tr/messenger/messenger.ftl
echo "    .accesskey = O"                      >> localization/tr/messenger/messenger.ftl

# Disable account:
# account-disabled =
#   .label = Account disabled
echo "account-disabled ="                    >> localization/tr/messenger/accountSettings.ftl
echo "  .label = Hesap devre dışı bırakıldı" >> localization/tr/messenger/accountSettings.ftl

# Search AB via display name and nickname.
# quick-filter-bar-match-addressbook =
#     .label = Match Address Book
#     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
echo "quick-filter-bar-match-addressbook ="                                                                >> localization/tr/messenger/about3Pane.ftl
echo "    .label = Adres Defterini Eşleştir"                                                               >> localization/tr/messenger/about3Pane.ftl
echo "    .tooltiptext = Adres defterlerindeki görünen adı (ile başlayan) veya takma adı (tam) eşleştirin" >> localization/tr/messenger/about3Pane.ftl

# Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization/tr/messenger/preferences/preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization/tr/messenger/preferences/preferences.ftl

echo "Expires=Expires" >> chrome/tr/locale/tr/messenger/search-attributes.properties

# New in 140:

# Original strings:
# menu-view-layout-horizontal =
#    .label = Horizontal View
#    .accesskey = z
echo "menu-view-layout-horizontal =" >> localization/tr/messenger/menubar.ftl
echo "    .label = Yatay Görünüm"    >> localization/tr/messenger/menubar.ftl
echo "    .accesskey = y"            >> localization/tr/messenger/menubar.ftl

# Original strings:
# <!ENTITY storeOnUpdated.label     "Store updated articles">
# <!ENTITY storeOnUpdated.accesskey "u">
# <!ENTITY storeOnUpdatedInfo.label "For Atom or JSON feeds with the &lt;updated&gt; tag. If the publisher changes the value, store the article instead of treating it as a duplicate.">
# <!ENTITY storeWebPageArchive.label "Store an archive of the web page with the article">
# <!ENTITY storeWebPageArchive.accesskey "w">
echo "<!ENTITY storeOnUpdated.label \"Güncellenen makaleleri kaydet\">" >> chrome/tr/locale/tr/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdated.accesskey \"y\">"                         >> chrome/tr/locale/tr/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeOnUpdatedInfo.label \"&lt;updated&gt; etiketi bulunan Atom veya JSON beslemeleri için. Yayıncı bu değeri değiştirirse, makale yinelenmiş olarak sayılmak yerine kaydedilir.\">" >> chrome/tr/locale/tr/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.label \"Makaleyle birlikte web sayfasının bir arşivini kaydet\">" >> chrome/tr/locale/tr/messenger-newsblog/feed-subscriptions.dtd
echo "<!ENTITY storeWebPageArchive.accesskey \"w\">" >> chrome/tr/locale/tr/messenger-newsblog/feed-subscriptions.dtd

# Original strings:
# run-filters-on-incoming-msgs =
#   .label = Run filters on incoming messages
echo "run-filters-on-incoming-msgs ="                  >> localization/tr/messenger/folderprops.ftl
echo "  .label = Gelen iletilerde filtreleri çalıştır" >> localization/tr/messenger/folderprops.ftl

# Original strings:
# carddav-directory-sync-warning =
#    CardDAV: Some data was dropped by the server, please check the Error Console for details
#carddav-directory-sync-failed =
#    CardDAV: Synchronisation with the server failed, please check the Error Console for details
echo "carddav-directory-sync-warning =" >> localization/tr/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Bazı veriler sunucu tarafından silindi, ayrıntılar için Hata Konsolunu kontrol edin" >> localization/tr/messenger/addressbook/abCardDAVProperties.ftl
echo "carddav-directory-sync-failed =" >> localization/tr/messenger/addressbook/abCardDAVProperties.ftl
echo "    CardDAV: Sunucuyla eşzamanlama başarısız oldu, ayrıntılar için Hata Konsolunu kontrol edin" >> localization/tr/messenger/addressbook/abCardDAVProperties.ftl
