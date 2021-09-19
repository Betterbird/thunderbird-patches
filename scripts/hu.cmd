:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Sadly its output is windows-1252 and we need UTF-8.
set icv=iconv -f windows-1252 -t utf-8

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"Beszélgetés\">" >> | %icv% chrome\hu\locale\hu\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"A kijelölt üzenet beszélgetésének megjelenítése\">" | %icv% >> chrome\hu\locale\hu\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"Továbbítás módja\">" >> | %icv% chrome\hu\locale\hu\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"Visszafejtés egy mappába\">" | %icv% >> chrome\hu\locale\hu\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"f\">" >> chrome\hu\locale\hu\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Csak a címkék nélküli üzenetek megjelenítése\">" | %icv% >> chrome\hu\locale\hu\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Csak a címkézett üzenetek megjelenítése. Kattintson a jobb egérgombbal az egyes címkék kijelölésének törléséhez.\">" | %icv% >> chrome\hu\locale\hu\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\hu\messenger\preferences\preferences.ftl
%lecho% "    .label = Keresés engedélyezése titkosított üzenetekben (a visszafejtett másolatot helyben tárolja)" | %icv% >> localization\hu\messenger\preferences\preferences.ftl

:: Original strings:
:: dock-options-show-badge =
::     .label = Show badge icon
::     .accesskey = b
%lecho% "dock-options-show-badge =" >> localization\hu\messenger\preferences\dock-options.ftl
%lecho% "    .label = Jelvény ikon megjelenítése" | %icv% >> localization\hu\messenger\preferences\dock-options.ftl
%lecho% "    .accesskey = J" >> localization\hu\messenger\preferences\dock-options.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Többsoros nézet minden mappában\">" | %icv% >> chrome\hu\locale\hu\messenger\messenger.dtd
