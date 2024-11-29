#!/bin/bash

# Betterbird installation script for Linux, adapted from
# https://github.com/risaer/betterbird-dirty-update/blob/main/updateBetterbird.sh

# Configuration
lang="en-US"  # Language options: en-US, de, fr, es-AR, ja, it, pt-BR.
version="release"  # Version options: previous, release, latest, future. Only 'release' is guaranteed to work.
shaFile="https://www.betterbird.eu/downloads/sha256-128.txt"  # Name of sha256 file
tmpDir="$HOME/tmp/betterbird"
tmpFile="$tmpDir/download.tar.bz2"
installDir="/opt"
desktopFile="/usr/share/applications/eu.betterbird.Betterbird.desktop"  # Do not change this configuration without reading comment in registerMIME().
backupDir="/opt/betterbird_backup_$(date +%Y%m%d%H%M)"
logFile="/var/log/betterbird/update.log"

# Helper function for logging
echoLog() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$logFile"
}

mkdir -p "$(dirname "$logFile")" 2>/dev/null
if [ $? -ne 0 ]; then
  echo "This script likely needs superuser access since it writes to /var and /opt."
  echo "Can't create logfile directory $(dirname "$logFile"). Exiting."
  exit 1
fi
touch "$logFile" 2>/dev/null
if [ $? -ne 0 ]; then
  echo "This script likely needs superuser access since it writes to /var and /opt."
  echo "Can't touch logfile at $logFile. Exiting."
  exit 1
fi

echoLog "Script started."

# Functions for installation steps
checkIfBetterbirdIsRunning() {
  if pgrep -f betterbird-bin > /dev/null; then
    echoLog "Betterbird is running. Please close it first."
    exit 1
  fi
}

downloadUpdate() {
  echoLog "Starting download..."
  mkdir -p "$tmpDir"
  rm -f "$tmpFile"
  wget -q -O "$tmpFile" "https://www.betterbird.eu/downloads/get.php?os=linux&lang=$lang&version=$version"
  echoLog "Downloaded archive."
}

checkHash() {
  local hash=$(sha256sum "$tmpFile" | awk '{print $1}')
  wget -q -O "$tmpDir/sha256.txt" "$shaFile"
  local update=$(grep $hash $tmpDir/sha256.txt | awk '{print $2}')
  if [ "$update" == "" ]; then
    echoLog "Hash $hash not found in $shaFile."
    exit 1
  else
    echoLog "Hash check OK, hash matched ${update:1}."
  fi
  rm "$tmpDir/sha256.txt"
}

backup() {
  echoLog "Checking if existing Betterbird installation needs to be backed up..."
  if [ -d "$installDir/betterbird" ]; then
    echoLog "Creating backup of the current installation..."
    cp -r "$installDir/betterbird" "$backupDir"
    if [ $? -eq 0 ]; then
      echoLog "Backup successfully created at $backupDir."
    else
      echoLog "Failed to create backup."
    fi
  else
    echoLog "No existing Betterbird installation found to backup."
  fi
}

extract() {
  rm -rf "$installDir/betterbird"
  tar xjf "$tmpFile" -C "$installDir"
  echoLog "Extracted to $installDir/betterbird."
  rm "$tmpFile"
}

createDesktopFile() {
  wget -q -O "$desktopFile" "https://raw.githubusercontent.com/Betterbird/thunderbird-patches/main/metadata/eu.betterbird.Betterbird.desktop"
  sed -i -e 's|Exec=betterbird %u|Exec='"$installDir"'/betterbird/betterbird %u|' "$desktopFile"
  sed -i -e 's|Icon=eu.betterbird.Betterbird|Icon='"$installDir"'/betterbird/chrome/icons/default/default256.png|' "$desktopFile"
  echoLog "Desktop file created."
}

registerMIME() {
  # This function registers Betterbird as the default application for handling mailto: links.
  # It uses xdg-mime to set and query the default MIME handler.
  # Note: If you move the desktop file to a non-standard directory, you may need to update $XDG_DATA_DIRS.
  # This environment variable tells the desktop environment where to find desktop files.
  # Example: export XDG_DATA_DIRS="/desktop/file/directory:$XDG_DATA_DIRS"
  # For more details, see: https://specifications.freedesktop.org/menu-spec/latest/ar01s02.html
  xdg-mime default eu.betterbird.Betterbird.desktop x-scheme-handler/mailto
  echoLog "MIME handler for x-scheme-handler/mailto registered."

  # Query the current default application set for handling mailto: links.
  local mimeHandler=$(xdg-mime query default x-scheme-handler/mailto)
  echoLog "Current default MIME handler for mailto: $mimeHandler."
}

# Main execution
checkIfBetterbirdIsRunning
downloadUpdate
checkHash
backup
extract
createDesktopFile
registerMIME
echoLog "Install successful: Betterbird installed in $installDir/betterbird."
echoLog "Desktop file in $desktopFile."
