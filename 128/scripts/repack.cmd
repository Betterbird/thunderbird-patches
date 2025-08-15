@if not exist betterbird-%~2.en-US.win64.installer-unsigned.exe (
  @echo Error: betterbird-%~2.en-US.win64.installer-unsigned.exe does not exist. Exiting.
  @exit /b 1
)

mkdir %~1
cd %~1

:: Unpack original
7z e ..\betterbird-%~2.en-US.win64.installer-unsigned.exe core/omni.ja
move omni.ja ..\omni.ja
7z x ..\omni.ja
del ..\omni.ja

:: Get language pack
wget http://ftp.mozilla.org/pub/thunderbird/candidates/128.14.0esr-candidates/build1/linux-x86_64/xpi/%~1.xpi

:: Remove stuff we don't want from the language pack
7z d %~1.xpi manifest.json
7z d %~1.xpi chrome\%~1\locale\branding
7z d %~1.xpi localization\%~1\branding

:: Unpack the language pack on top of the original
7z x %~1.xpi
rm -f %~1.xpi

:: Move US branding
mv chrome\en-US\locale\branding chrome\%~1\locale\branding\
mv localization\en-US\branding\ localization\%~1\branding\

:: Remove original en-US locale, experiments showed that it isn't used as fallback
:: when left in omni.ja. Leaving chrome/en-US even switched to that locale.
rm -rf chrome\en-US
rm -rf localization\en-US

:: lessecho uses LR instead of CRLF
lessecho %~1> update.locale
lessecho %~1> res\multilocale.txt

:: Edit chrome\chrome.manifest
sed -i -e 's/en-US en-US\/locale\/branding/%~1 %~1\/locale\/branding/' chrome\chrome.manifest
sed -i -e 's/en-US en-US\/locale\/en-US/%~1 %~1\/locale\/%~1/' chrome\chrome.manifest
sed -i -e 's/en-US en-US\/locale\/pdfviewer/%~1 %~1\/locale\/pdfviewer/' chrome\chrome.manifest

:: Call script that provides extra strings
call ..\%~1.cmd

:: Pack the whole thing again
7z a -r -tzip -m0=Copy omni.ja *

cd ..
copy betterbird-%~2.en-US.win64.installer-unsigned.exe betterbird-%~2.%~1.win64.installer.exe
mkdir core
mv %~1\omni.ja core\omni.ja
7z u betterbird-%~2.%~1.win64.installer.exe core\omni.ja

@if exist betterbird-%~2.%~1.win64.installer-unsigned.exe (
  @echo "Replacing setup.exe"
  7z e betterbird-%~2.%~1.win64.installer-unsigned.exe setup.exe
  7z a betterbird-%~2.%~1.win64.installer.exe setup.exe
  rm setup.exe
)

:: Sign
C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe "Set-AuthenticodeSignature -FilePath betterbird-%~2.%~1.win64.installer.exe -Certificate (Get-ChildItem -Path Cert:\CurrentUser\My\ -CodeSigningCert) -TimestampServer http://timestamp.digicert.com"

:: Keep omni.ja for later
mkdir omni-win
rm omni-win\omni-%~1.ja
mv core\omni.ja omni-win\omni-%~1.ja
rmdir /s /q core
rmdir /s /q %~1
