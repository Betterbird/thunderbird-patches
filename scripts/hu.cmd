:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: <!ENTITY hdrOpenConversationButton1.label "Conversation">
:: <!ENTITY hdrOpenConversationButton1.tooltip "Show conversation of this message">
:: <!ENTITY hdrMenuForwardButton.label "Forward As">
%lecho% "<!ENTITY hdrOpenConversationButton1.label \"Beszélgetés\">" >> chrome\hu\locale\hu\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrOpenConversationButton1.tooltip \"A kijelölt üzenet beszélgetésének megjelenítése\">" >> chrome\hu\locale\hu\messenger\msgHdrViewOverlay.dtd
%lecho% "<!ENTITY hdrMenuForwardButton.label \"Továbbítás módja\">" >> chrome\hu\locale\hu\messenger\msgHdrViewOverlay.dtd

:: Original strings:
:: <!ENTITY contextDecryptToFolder.label "Decrypt to Folder">
:: <!ENTITY contextDecryptToFolder.accesskey "Y">
%lecho% "<!ENTITY contextDecryptToFolder.label \"Visszafejtés egy mappába\">" >> chrome\hu\locale\hu\messenger\messenger.dtd
%lecho% "<!ENTITY contextDecryptToFolder.accesskey \"f\">" >> chrome\hu\locale\hu\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Csak a címkék nélküli üzenetek megjelenítése\">" >> chrome\hu\locale\hu\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Csak a címkézett üzenetek megjelenítése. Kattintson a jobb egérgombbal az egyes címkék kijelölésének törléséhez.\">" >> chrome\hu\locale\hu\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\hu\messenger\preferences\preferences.ftl
%lecho% "    .label = Keresés engedélyezése titkosított üzenetekben (a visszafejtett másolatot helyben tárolja)" >> localization\hu\messenger\preferences\preferences.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Többsoros nézet minden mappában\">" >> chrome\hu\locale\hu\messenger\messenger.dtd
