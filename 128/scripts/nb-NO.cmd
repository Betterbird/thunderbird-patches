:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Git's version.
set lecho="C:\Program Files\Git\usr\bin\lessecho.exe"
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Legg til en ny gruppe" >> chrome\nb-NO\locale\nb-NO\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Startmappe\">" >> chrome\nb-NO\locale\nb-NO\messenger\messenger.dtd

:: Original strings:
:: quick-filter-bar-untagged-button =
::     .tooltiptext = Show messages with no tags
:: quick-filter-bar-tagged-button =
::     .tooltiptext = Show messages with one or more tags. Right-click to clear individual tag selection.
%lecho% "quick-filter-bar-untagged-button ="              >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Vis meldinger uten etiketter" >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "quick-filter-bar-tagged-button ="                >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Vis meldinger med én eller flere etiketter. Høyreklikk for å fjerne individuelle etikettvalg." >> localization\nb-NO\messenger\about3Pane.ftl

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .label = Aktiver søk i krypterte meldinger (lagrer dekryptert kopi lokalt)" >> localization\nb-NO\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="                 >> localization\nb-NO\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Nylig(e) fil(er)…"          >> localization\nb-NO\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="         >> localization\nb-NO\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Legg ved nylig(e) fil(er)…" >> localization\nb-NO\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: menu-multi-line-all-folders =
::     .label = Multi-line View On All Folders
%lecho% "menu-multi-line-all-folders ="                 >> localization\nb-NO\messenger\menubar.ftl
%lecho% "    .label = Flerlinjevisning for alle mapper" >> localization\nb-NO\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option ="    >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .label = Ren tekst eller HTML"      >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Hvis meldingen ikke inneholder formatering, send ren tekst. Ellers send kun HTML." >> localization\nb-NO\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\nb-NO\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Ren tekst eller HTML"      >> localization\nb-NO\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\nb-NO\messenger\messengercompose\messengercompose.ftl

:: Movemail
:: Strings from https://hg-edge.mozilla.org/l10n-central/nb-NO/file/38a9ac50ec12266cba8754c3008523e9d2eaedae/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Klarte ikke åpne Spool-filen %%S for e-post." >> chrome\nb-NO\locale\nb-NO\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Klarte ikke opprette låsefilen %%S. For at movemail skal virke, må det være mulig å opprette låsefiler i Spool-mappen til e-posten. På mange systemer kan dette gjøres enkelt ved å sette modus 01777 på Spool-mappen." >> chrome\nb-NO\locale\nb-NO\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock==Klarte ikke slette låsefilen %%S."              >> chrome\nb-NO\locale\nb-NO\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Klarte ikke tømme spool-filen %%S."       >> chrome\nb-NO\locale\nb-NO\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Klarte ikke finne spool-filen for e-post."    >> chrome\nb-NO\locale\nb-NO\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Klarte ikke tolke spool-fil %%S. Filen kan være skadet eller ugyldig." >> chrome\nb-NO\locale\nb-NO\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                      >> chrome\nb-NO\locale\nb-NO\messenger\messenger.properties

%lecho% "account-action-add-movemail-account ="  >> localization\nb-NO\messenger\accountManager.ftl
%lecho% "    .label = Legg til Movemail-konto…"  >> localization\nb-NO\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                     >> localization\nb-NO\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="            >> localization\nb-NO\messenger\menubar.ftl
%lecho% "    .label = Movemail-konto…"           >> localization\nb-NO\messenger\menubar.ftl
%lecho% "    .accesskey = M"                     >> localization\nb-NO\messenger\menubar.ftl

:: Unread/seleted status
%lecho% "unreadMsgStatus=Ulest: %%S"   >> chrome\nb-NO\locale\nb-NO\messenger\messenger.properties
%lecho% "selectedMsgStatus=Valgt: %%S" >> chrome\nb-NO\locale\nb-NO\messenger\messenger.properties
%lecho% "totalMsgStatus=Totalt: %%S"   >> chrome\nb-NO\locale\nb-NO\messenger\messenger.properties

:: Original strings:
:: vertical-tabs-label =
::     .label = Enable vertical tabs
::     .accesskey = v
:: attachments-display-top-label =
::     .label = Display attachment list above message
::     .accesskey = p
%lecho% "vertical-tabs-label ="                          >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .label = Vis fanerad vertikalt"             >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = v"                             >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "attachments-display-top-label ="                >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .label = Vis vedleggslisten over meldingen" >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = o"                             >> localization\nb-NO\messenger\preferences\preferences.ftl

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
%lecho% "restore-tabs-session-label ="                 >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .value = Gjenopprett faner ved oppstart:" >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "restore-all-tabs ="                           >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .label = Alle faner"                      >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = a"                           >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "restore-system-tabs ="                        >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .label = Systemfaner"                     >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = s"                           >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "restore-no-tabs ="                            >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .label = Ingen"                           >> localization\nb-NO\messenger\preferences\preferences.ftl
%lecho% "    .accesskey = i"                           >> localization\nb-NO\messenger\preferences\preferences.ftl

:: Original strings:
:: menu-view-layout-widethread =
::     .label = Wide Thread View
::     .accesskey = T
:: menu-view-layout-stacked =
::     .label = Stacked View
::     .accesskey = S
%lecho% "menu-view-layout-widethread =" >> localization\nb-NO\messenger\menubar.ftl
%lecho% "    .label = Bred trådvisning" >> localization\nb-NO\messenger\menubar.ftl
%lecho% "    .accesskey = B"            >> localization\nb-NO\messenger\menubar.ftl
%lecho% "menu-view-layout-stacked ="    >> localization\nb-NO\messenger\menubar.ftl
%lecho% "    .label = Stablet visning"  >> localization\nb-NO\messenger\menubar.ftl
%lecho% "    .accesskey = S"            >> localization\nb-NO\messenger\menubar.ftl

:: Original strings:
:: other-action-msg-edit-headers =
::     .label = Edit Headers…
::     .accesskey = H
:: msg-edit-dialog-title = Edit Headers
:: msg-edit-cancel-button = Cancel
:: msg-edit-restore-button = Restore
::     .title = Show the original value
:: msg-edit-update-button = Update
%lecho% "other-action-msg-edit-headers ="              >> localization\nb-NO\messenger\messenger.ftl
%lecho% "    .label = Rediger overskrifter…"           >> localization\nb-NO\messenger\messenger.ftl
%lecho% "    .accesskey = R"                           >> localization\nb-NO\messenger\messenger.ftl
%lecho% "msg-edit-dialog-title = Rediger overskrifter" >> localization\nb-NO\messenger\messenger.ftl
%lecho% "msg-edit-cancel-button = Avbryt"              >> localization\nb-NO\messenger\messenger.ftl
%lecho% "msg-edit-restore-button = Gjenopprett"        >> localization\nb-NO\messenger\messenger.ftl
%lecho% "    .title = Vis den opprinnelige verdien"    >> localization\nb-NO\messenger\messenger.ftl
%lecho% "msg-edit-update-button = Oppdater"            >> localization\nb-NO\messenger\messenger.ftl

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
%lecho% "quick-filter-bar-negate ="                                                                                                         >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "    .title = Høyreklikk eller trykk Ctrl+Enter på en knapp for å ekskludere den fra søket."                                        >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "      For tekst- og etikettfilteret vil hver ekskludert knapp legge til et OG-vilkår i søket."                                     >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "      Når en etikett er ekskludert, legges meldinger med denne etiketten ikke til i søkeresultatet."                               >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "      Eksempler:"                                                                                                                  >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "      • [Stjernemerket] og [Etiketter] ekskludert: Vis alle meldinger som verken er stjernemerket eller merket med etikett."       >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "      • [Emne] ekskludert og [Meldingstekst] valgt: Vis meldinger der ‘Emne’ ikke inneholder “ord”, men ‘Meldingstekst’ gjør det." >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "      • [Én av] med [Viktig] ekskludert og [Arbeid] og [Personlig] valgt:"                                                         >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "      Vis meldinger som ikke har etiketten ‘Viktig’, men har enten ‘Arbeid’ eller ‘Personlig’."                                    >> localization\nb-NO\messenger\about3Pane.ftl
:: New in 128:

:: Threading on menu:
:: mail-context-unthread-message =
::     .label = Unthread Message
::     .accesskey = U
:: mail-context-reset-message-threading =
::     .label = Restore Original Threading
::     .accesskey = R
%lecho% "mail-context-unthread-message ="             >> localization\nb-NO\messenger\messenger.ftl
%lecho% "    .label = Fjern melding fra tråd"         >> localization\nb-NO\messenger\messenger.ftl
%lecho% "    .accesskey = F"                          >> localization\nb-NO\messenger\messenger.ftl
%lecho% "mail-context-reset-message-threading ="      >> localization\nb-NO\messenger\messenger.ftl
%lecho% "    .label = Gjenopprett opprinnelig tråden" >> localization\nb-NO\messenger\messenger.ftl
%lecho% "    .accesskey = G"                          >> localization\nb-NO\messenger\messenger.ftl

:: Disable account:
:: account-disabled =
::   .label = Account disabled
%lecho% "account-disabled ="          >> localization\nb-NO\messenger\accountSettings.ftl
%lecho% "  .label = Konto deaktivert" >> localization\nb-NO\messenger\accountSettings.ftl

:: Search AB via display name and nickname.
:: quick-filter-bar-match-addressbook =
::     .label = Match Address Book
::     .tooltiptext = Match on Display Name (begins with) or Nickname (exact) from your address books
%lecho% "quick-filter-bar-match-addressbook =" >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "    .label = Sammenlign adressebok"   >> localization\nb-NO\messenger\about3Pane.ftl
%lecho% "    .tooltiptext = Sammenlign på visningsnavn (starter med) eller kallenavn (eksakt) fra adresseboken din" >> localization\nb-NO\messenger\about3Pane.ftl

:: Fix "qr-export-pane-header = Export accounts to { -brand-product-name } Mobile"
sed -i -e 's/^qr-export-pane-header\(.*\){ -brand-product-name }\(.*\)/qr-export-pane-header\1Thunderbird\2/' localization\nb-NO\messenger\preferences\preferences.ftl
sed -i -e 's/^qr-export-get-app\(.*\){ -brand-product-name }\(.*\)/qr-export-get-app\1Thunderbird\2/' localization\nb-NO\messenger\preferences\preferences.ftl

%lecho% "Expires=Expires" >> chrome\nb-NO\locale\nb-NO\messenger\search-attributes.properties
