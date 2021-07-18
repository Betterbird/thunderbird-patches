mkdir %~1
cd %~1

:: Unpack original
7z x ..\omni.ja

:: Get language pack
wget http://ftp.mozilla.org/pub/thunderbird/releases/91.0b1/linux-x86_64/xpi/%~1.xpi

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

:: Remove original en-US locale
rm -rf chrome\en-US
rm -rf localization\en-US

:: Need to worry about the CRLF here?
echo %~1> update.locale
echo %~1,en-US> res\multilocale.txt

:: Edit chrome\chrome.manifest
sed -i -e 's/en-US en-US\/locale\/en-US/%~1 %~1\/locale\/%~1/' chrome\chrome.manifest
sed -i -e 's/en-US en-US\/locale\/pdfviewer/%~1 %~1\/locale\/pdfviewer/' chrome\chrome.manifest

:: TODO: Add extra strings

:: Pack the whole thing again
7z a -r -tzip -m0=Copy omni.ja *.*
