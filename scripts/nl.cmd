:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

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
:: decryptToFolder.title=Confirm Decrypt
:: decryptToFolder.desc=This will decrypt messages to a folder which is not local. Are you sure you want to continue?
:: decryptToFolder.dontAsk.label=Don't ask me again.
%lecho% "decryptToFolder.title=Ontsleuteling bevestigen" >> chrome\nl\locale\nl\messenger\messenger.properties
%lecho% "decryptToFolder.desc=Dit zal het bericht ontsleutelen naar een niet-lokale map. Weet u zeker dat u door wilt gaan?" >> chrome\nl\locale\nl\messenger\messenger.properties
%lecho% "decryptToFolder.dontAsk.label=Niet opnieuw vragen." >> chrome\nl\locale\nl\messenger\messenger.properties

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Nieuwe groep toevoegen" >> chrome\nl\locale\nl\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Start map\">" >> chrome\nl\locale\nl\messenger\messenger.dtd

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
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                   >> localization\nl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Recent geopende bestand(en)…" >> localization\nl\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="           >> localization\nl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Voeg recent geopende bestand(en) toe…" >> localization\nl\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Weergave met meerdere regels voor alle mappen\">" >> chrome\nl\locale\nl\messenger\messenger.dtd

:: Fix mess from bug 1764806, hard-coded brand-names
sed -i -e 's/ Thunderbird / Betterbird /' localization\nl\messenger\openpgp\keyWizard.ftl
sed -i -e 's/ Thunderbird / Betterbird /' localization\nl\messenger\openpgp\openpgp.ftl
