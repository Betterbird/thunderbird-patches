:: mkdir langpack-test
cd langpack-test

:: Get language pack
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/de.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/en-GB.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/es-AR.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/fr.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/it.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/ja.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/nl.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/pl.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/pt-BR.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/ru.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/zh-CN.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/cs.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/sq.xpi
wget http://ftp.mozilla.org/pub/thunderbird/candidates/115.6.0-candidates/build2/linux-x86_64/xpi/uk.xpi

7z -y x de.xpi
7z -y x en-GB.xpi
7z -y x es-AR.xpi
7z -y x fr.xpi
7z -y x it.xpi
7z -y x ja.xpi
7z -y x nl.xpi
7z -y x pl.xpi
7z -y x pt-BR.xpi
7z -y x ru.xpi
7z -y x zh-CN.xpi
7z -y x cs.xpi
7z -y x sq.xpi
7z -y x uk.xpi
