#!/bin/bash

###
# Betterbird installation script for Linux, adapted from
# https://github.com/risaer/betterbird-dirty-update/blob/main/updateBetterbird.sh

###
# Configuration:
# Language: Available are en-US, de, fr, es-AR, ja, it, pr-BR.
lang=en-US
# Which version: previous, release, latest, future. Only release is guaranteed to work.
version=release
# Name of sha256 file
shaFile=https://www.betterbird.eu/downloads/sha256-115.txt

# Configure download directory.
tmpDir=~/tmp/betterbird
tmpFile=$tmpDir/download.tar.bz2

# Configure installation directory.
installDir=~
desktopFile=~/.local/share/applications/betterbird.desktop

###
# Functions that do all the work.
checkIfBetterbirdIsRunning() {
  if [ `ps aux | grep -v grep | grep betterbird-bin | wc -l` -gt 0 ]; then 
    echo Betterbird is running.
    echo Please close it first.
    exit 1
  fi
}

downloadUpdate() {
  echo .. Starting download
  mkdir -p $tmpDir
  rm -f $tmpFile
  wget -q -O $tmpFile "https://www.betterbird.eu/downloads/get.php?os=linux&lang=$lang&version=$version"
  echo .. Downloaded archive
}

checkHash() {
  hash=`sha256sum $tmpFile | awk '{print $1}'`
  rm -f $tmpDir/sha256.txt
  wget -q -O $tmpDir/sha256.txt $shaFile
  update=`grep $hash $tmpDir/sha256.txt | awk '{print $2}'`
  if [ "$update" == "" ]; then
    echo Hash $hash not found in $shaFile
    exit 1
  else
    echo .. Hash $hash matched $update
  fi
}

extract() {
  rm -rf $installDir/betterbird
  tar xjf $tmpFile -C $installDir
  echo .. Extracted to $installDir/betterbird
}

createDesktopFile() {
  wget -q -O $desktopFile https://raw.githubusercontent.com/Betterbird/thunderbird-patches/main/metadata/eu.betterbird.Betterbird.desktop
  sed -i -e 's|Exec=betterbird %u|Exec='"$installDir"'/betterbird/betterbird %u|' $desktopFile
  sed -i -e 's|Icon=eu.betterbird.Betterbird|Icon='"$installDir"'/betterbird/chrome/icons/default/default256.png|' $desktopFile
  chmod +x $desktopFile
  echo .. Desktop file created
}

###
# Mainline
checkIfBetterbirdIsRunning
downloadUpdate
checkHash
extract
createDesktopFile

echo Install successful:
echo Betterbird installed in $installDir/betterbird
echo Desktop file in $desktopFile
