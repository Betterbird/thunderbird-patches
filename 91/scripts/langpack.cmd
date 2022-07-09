:: mkdir %~1-langpack
cd %~1-langpack

:: Get language pack
:: wget http://ftp.mozilla.org/pub/thunderbird/releases/91.3.2/linux-x86_64/xpi/%~1.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/91.8.0-candidates/build1/linux-x86_64/xpi/%~1.xpi

:: Remove stuff we don't want from the language pack
7z d %~1.xpi chrome\%~1\locale\%~1\branding
7z d %~1.xpi localization\%~1\branding

:: Unpack the language pack
7z x %~1.xpi
rm -f %~1.xpi

:: Fix the manifest.
sed -i -e 's/Language pack for Thunderbird/Language pack for Betterbird/' manifest.json

:: Copy US branding
cp -r branding-chrome       chrome\%~1\locale\%~1\branding\
cp -r branding-localization localization\%~1\branding\

:: Call script that provides extra strings
call ..\%~1.cmd

:: Pack the whole thing again
7z a -r -tzip de.xpi manifest.json chrome localization

rmdir /s /q chrome
rmdir /s /q localization
rm manifest.json
