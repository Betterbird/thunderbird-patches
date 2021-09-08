:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Sadly its output is windows-1252 and we need UTF-8.
set icv=iconv -f windows-1252 -t utf-8

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"Conversatie\">" >> chrome\nl\locale\nl\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"Conversatie voor geselecteerde bericht tonen\">" >> chrome\nl\locale\nl\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"Doorsturen als\">" >> chrome\nl\locale\nl\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"Ontsleutelen naar map\">" >> chrome\nl\locale\nl\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"a\">" >> chrome\nl\locale\nl\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Berichten zonder labels tonen\">" >> chrome\nl\locale\nl\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Berichten met een of meer labels tonen. Klik met de rechtermuisknop om de selectie van individuele labels te wissen.\">" >> chrome\nl\locale\nl\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\nl\messenger\preferences\preferences.ftl
%lecho% "    .label = Versleutelde berichten doorzoekbaar maken (slaat ontsleutelde kopie lokaal op)" >> localization\nl\messenger\preferences\preferences.ftl

:: Original strings:
:: dock-options-show-badge =
::     .label = Show badge icon
::     .accesskey = b
:: Will need to translate these. "Icon" is usually "Symbol" in German and "badge" was never translated. Good luck to the translators.
:: "Badge icon" already seems to be a misnomer.
%lecho% "dock-options-show-badge =" >> localization\nl\messenger\preferences\dock-options.ftl
%lecho% "    .label = Show badge icon" >> localization\nl\messenger\preferences\dock-options.ftl
%lecho% "    .accesskey = b" >> localization\nl\messenger\preferences\dock-options.ftl
