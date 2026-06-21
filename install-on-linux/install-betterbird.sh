#!/bin/bash

# Betterbird installation script for Linux, adapted from
# https://github.com/risaer/betterbird-dirty-update/blob/main/updateBetterbird.sh

# Configuration
lang="en-US"  # Language options: en-US, de, fr, es-ES, ja, it, nl, pt-BR, ru.
channel="release"  # Channel options: previous, release, latest, future. Only 'release' is guaranteed to work.
force=false
tmpDir="$HOME/tmp/betterbird"
tmpFile=""  # Will be filled by script.
tmpLocFile="$tmpDir/download.txt"
installDir="/opt"
customIconsDir=  # Custom Icons folder, change to /path/to/custom/icons/folder or leave empty.
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

checkInstalledVersion() {
  if [ -x "$installDir/betterbird/betterbird" ]; then
    betterbirdVersion=$("$installDir"/betterbird/betterbird -v 2>/dev/null | sed 's/Betterbird\ Project\ Betterbird\ //')
    length=${#betterbirdVersion}
    if [ -n "$betterbirdVersion" ] && [ "${fileToDownload:11:$length}" = "$betterbirdVersion" ]; then
      if [ "$force" = true ]; then
        echoLog "Betterbird is up to date, but --force given. Re-installing."
      else
        echoLog "Betterbird is up to date. No need to upgrade."
        exit 1
      fi
    fi
  fi
}

downloadUpdate() {
  mkdir -p "$tmpDir"
  wget -q -O "$tmpLocFile" "https://www.betterbird.eu/downloads/getloc.php?os=linux&lang=$lang&version=$channel"
  read -r fileToDownload < "$tmpLocFile"
  fileToDownload=$(basename "$fileToDownload")
  # extract major version (3 characters after "betterbird-")
  major=${fileToDownload:11:3}
  shaFile="https://www.betterbird.eu/downloads/sha256-${major}.txt"  # Name of sha256 file
  echoLog "Download found: $fileToDownload."
  tmpFile="$tmpDir/$fileToDownload"

  checkInstalledVersion

  # Delete old downloads.
  find "$tmpDir" -type f ! -name "$fileToDownload" -delete

  if [ -f "$tmpFile" ]; then
    echoLog "$tmpFile already present. Skipping download."
  else
    echoLog "Starting download..."
    wget -q --show-progress -O "$tmpFile" "https://www.betterbird.eu/downloads/get.php?os=linux&lang=$lang&version=$channel"
    echoLog "Downloaded archive."
  fi
}

checkHash() {
  local hash=$(sha256sum "$tmpFile" | awk '{print $1}')
  wget -q -O "$tmpDir/sha256.txt" "$shaFile"
  local update=$(grep "$hash" "$tmpDir/sha256.txt" | awk '{print $2}')
  if [ "$update" == "" ]; then
    echoLog "Hash $hash not found in $shaFile."
    echoLog "Removing downloaded archive..."
    rm "$tmpFile"
    exit 1
  else
    echoLog "Hash check OK, hash matched ${update:1}."
  fi
  rm "$tmpDir/sha256.txt"
}

backup() {
  echoLog "Checking if existing Betterbird installation needs to be backed up..."
  if [ -d "$installDir/betterbird" ]; then
    echoLog "Remove existing backups."
    rm -rf "$installDir/betterbird_backup_"*
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
  tar xf "$tmpFile" -C "$installDir"
  echoLog "Extracted to $installDir/betterbird."
}

addCustomIcons() {
  if [ -n "$customIconsDir" ] && [ -d "$customIconsDir" ]; then
    shopt -s nullglob
    local icons=("$customIconsDir"/*)
    shopt -u nullglob
    if [ ${#icons[@]} -gt 0 ]; then
      cp "${icons[@]}" "$installDir/betterbird/chrome/icons/default/"
      if [ $? -eq 0 ]; then
        echoLog "Successfully replaced with custom icons."
      else
        echoLog "Failed to replace the icons."
      fi
    else
      echoLog "No custom icons found in $customIconsDir."
    fi
  fi
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
  if command -v xdg-mime >/dev/null 2>&1; then
    xdg-mime default eu.betterbird.Betterbird.desktop x-scheme-handler/mailto
    echoLog "MIME handler for x-scheme-handler/mailto registered."

    # Query the current default application set for handling mailto: links.
    local mimeHandler=$(xdg-mime query default x-scheme-handler/mailto)
    echoLog "Current default MIME handler for mailto: $mimeHandler."
  else
    echoLog "xdg-mime not found, skipping MIME registration."
  fi
}

usage() {
  echo "Usage: $0 [-f|--force] [-l|--lang LANG] [-c|--channel CH]"
  echo "  -f, --force        Force re-install even if the same version is already installed."
  echo "  -l, --lang LANG    Set language (default: en-US). Options: en-US, de, fr, es-ES, ja, it, nl, pt-BR, ru."
  echo "  -c, --channel CH   Set update channel (default: release). Options: previous, release, latest, future."
  echo "                     Only release is guaranteed to work."
  exit 1
}

# Parse command line arguments
while [ $# -gt 0 ]; do
  case "$1" in
    -f|--force)
      force=true
      ;;
    -l|--lang)
      if [ -z "$2" ]; then
        echo "Missing argument for $1"
        usage
      fi
      lang="$2"
      shift
      ;;
    -c|--channel)
      if [ -z "$2" ]; then
        echo "Missing argument for $1"
        usage
      fi
      channel="$2"
      shift
      ;;
    -h|--help)
      usage
      ;;
    *)
      echo "Unknown option: $1"
      usage
      ;;
  esac
  shift
done

# Main execution
checkIfBetterbirdIsRunning
downloadUpdate
checkHash
backup
extract
addCustomIcons
createDesktopFile
registerMIME
echoLog "Install successful: Betterbird installed in $installDir/betterbird."
echoLog "Desktop file in $desktopFile."
