mkdir langpacks
cd langpacks

:: Get language pack
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.0.1-candidates/build1/linux-x86_64/xpi/%~1.xpi

:: Remove stuff we don't want from the language pack
7z d %~1.xpi chrome\%~1\locale\branding
7z d %~1.xpi localization\%~1\branding

:: Unpack the language pack
7z x %~1.xpi
rm -f %~1.xpi

:: Fix the manifest.
sed -i -e 's/langpack-%~1@thunderbird.mozilla.org/langpack-%~1@betterbird.eu/' manifest.json
sed -i -e 's/Thunderbird Language Pack/Betterbird Language Pack/' manifest.json
sed -i -e 's/"gecko": {/"gecko": { "update_url": "https:\/\/www.betterbird.eu\/downloads\/LanguagePacks\/updates.json",/' manifest.json

:: Copy US branding
7z x ..\betterbird-%~2.en-US.win64.installer.exe core\omni.ja
7z x core\omni.ja chrome\en-US\locale\branding\
7z x core\omni.ja localization\en-US\branding\
mv chrome\en-US\locale\branding\ chrome\%~1\locale\branding\
mv localization\en-US\branding localization\%~1\branding\
rmdir /s /q chrome\en-US
rmdir /s /q localization\en-US

:: Call script that provides extra strings
call ..\%~1.cmd

:: Pack the whole thing again
7z a -r -tzip %~1-%~2.xpi manifest.json chrome localization

rmdir /s /q chrome
rmdir /s /q localization
rmdir /s /q core
rm manifest.json

cd ..
