:: %~1 - locale
:: %~2 - version

@if not exist betterbird-%~2.%~1.win64.installer.exe (
  @echo Error: betterbird-%~2.%~1.win64.installer.exe does not exist. Exiting.
  @exit /b 1
)

7z x betterbird-%~2.%~1.win64.installer.exe
rm setup.exe

:: Create a ZIP file (larger).
7z a -tzip BetterbirdPortable-%~2.%~1.win64.zip core BetterbirdLauncher.exe vcruntime140.dll vcruntime140_1.dll

:: Create a self-extracting 7z executable.
:: 7z a -sfx BetterbirdPortable-%~2.%~1.win64.exe core BetterbirdLauncher.exe vcruntime140.dll

rmdir /s /q core
