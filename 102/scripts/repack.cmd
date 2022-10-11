mkdir %~1
cd %~1

:: Unpack original
7z e ..\betterbird-%~2.en-US.win64.installer.exe core/omni.ja
move omni.ja ..\omni.ja
7z x ..\omni.ja
del ..\omni.ja

:: Get language pack
wget http://ftp.mozilla.org/pub/thunderbird/candidates/102.3.3-candidates/build1/linux-x86_64/xpi/%~1.xpi

:: Remove stuff we don't want from the language pack
7z d %~1.xpi manifest.json
7z d %~1.xpi chrome\%~1\locale\%~1\branding
7z d %~1.xpi localization\%~1\branding

:: Unpack the language pack on top of the original
7z x %~1.xpi
rm -f %~1.xpi

:: Move US branding
mv chrome\en-US\locale\en-US\branding chrome\%~1\locale\%~1\branding
mv localization\en-US\branding\ localization\%~1\branding\

:: Remove original en-US locale, experiments showed that it isn't used as fallback
:: when left in omni.ja. Leaving chrome/en-US even switched to that locale.
rm -rf chrome\en-US
rm -rf localization\en-US

:: lessecho uses LR instead of CRLF
lessecho %~1> update.locale
lessecho %~1,en-US> res\multilocale.txt

:: Edit chrome\chrome.manifest
sed -i -e 's/en-US en-US\/locale\/en-US/%~1 %~1\/locale\/%~1/' chrome\chrome.manifest
sed -i -e 's/en-US en-US\/locale\/pdfviewer/%~1 %~1\/locale\/pdfviewer/' chrome\chrome.manifest

:: Call script that provides extra strings
call ..\%~1.cmd

:: Pack the whole thing again
7z a -r -tzip -m0=Copy omni.ja *.*

cd ..
copy betterbird-%~2.en-US.win64.installer.exe betterbird-%~2.%~1.win64.installer.exe
mkdir core
mv %~1\omni.ja core\omni.ja
7z u betterbird-%~2.%~1.win64.installer.exe core\omni.ja
:: Keep omni.ja for later
mkdir omni-win
rm omni-win\omni-%~1.ja
mv core\omni.ja omni-win\omni-%~1.ja
rmdir /s /q core
rmdir /s /q %~1
