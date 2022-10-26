#!/bin/bash

if [ "$#" -ne 1 ] && [ "$#" -ne 2 ]; then
  echo "Usage: $0 VERSION [apply|noclobber]" >&2
  exit 1
fi

APPLY=""
NOCLOBBER=""
if [ "$#" -eq 2 ]; then
  if [ "$2" = "apply" ]; then
    APPLY="apply"
  elif [ "$2" = "noclobber" ]; then
    NOCLOBBER="noclobber"
  else
    echo "Usage: $0 VERSION [apply|noclobber]" >&2
    exit 1
  fi
fi

if ! [ -d thunderbird-patches ]; then
  echo "No clone of https://github.com/Betterbird/thunderbird-patches.git" >&2
  echo "How did you get this build script in the first place?" >&2
  exit 1
fi

echo
echo "======================================================="
echo "Updating Betterbird patches"
cd thunderbird-patches
git pull
cd ..

DIFF=$(diff -q build.sh thunderbird-patches/build/build.sh)
if [ "|$DIFF|" != "||" ]; then
  echo "Newer version of build script available."
  echo "Please |cp thunderbird-patches/build/build.sh .| and restart"
  exit 1
fi

if ! [ -d thunderbird-patches/"$1" ]; then
  echo "No such version" >&2
  exit 1
fi

VERSION="$1"
UNAME=$(uname)
# uname -i doesn't work on Mac.
UNAME_ARCH="unknown"
if [ "$UNAME" = "Linux" ]; then
  UNAME_FULL=$(uname -a)
  UNAME_ARCH=$(uname -i)
  # Hack for Debian 11 Bullseye on Amazon EC2 image.
  if [[ "$UNAME_FULL" == *"aarch64"* ]] && [ "$UNAME_ARCH" = "unknown" ]; then
    UNAME_ARCH="aarch64"
  fi
fi
# Windows: Cater for newer and older MozillaBuild: MINGW32_NT-6.2 or MSYS_NT-10
if [[ "$UNAME" == *"_NT-"* ]]; then
  UNAME="Windows"
fi

. ./thunderbird-patches/$VERSION/$VERSION.sh

MOZILLA_DIR="$(basename $MOZILLA_REPO)"

echo
echo "======================================================="
echo "Using directory $MOZILLA_DIR"

if [ -d $MOZILLA_DIR ]; then
  echo "Mozilla directory $MOZILLA_DIR found."
  echo "Do you want to remove the $MOZILLA_DIR and replace it with a fresh copy?"
  read -p "Proceed? (Y/N) " ANSWER
  if [ "$ANSWER" != "Y" ]; then
    echo "Y not received, exiting"
    exit 1
  fi
  rm -rf $MOZILLA_DIR
fi

APPDATA_FILE="thunderbird-patches/metadata/eu.betterbird.Betterbird.appdata.xml"
SOURCE=$(cat $APPDATA_FILE | sed -rz 's@.+<artifact type="source">\s*<location>([^<]+)<\/location>.+@\1@')

echo
echo "======================================================="
echo "Retrieving $SOURCE"
wget -nc $SOURCE
ARCHIVE="$(basename $SOURCE)"

echo
echo "======================================================="
echo "Unpacking $ARCHIVE"
tar -xf $ARCHIVE
mv "${ARCHIVE%.source.tar.xz}" $MOZILLA_DIR

cd $MOZILLA_DIR
pwd

echo
echo "======================================================="
echo "Copying patches and series file from thunderbird-patches"
if ! [ -d patches ]; then
  mkdir patches
fi
if ! [ -d comm/patches ]; then
  mkdir comm/patches
fi
cp ../thunderbird-patches/$VERSION/series-M-C            patches/series
cp ../thunderbird-patches/$VERSION/series           comm/patches/series
cp ../thunderbird-patches/$VERSION/branding/*.patch comm/patches/
cp ../thunderbird-patches/$VERSION/bugs/*.patch     comm/patches/
cp ../thunderbird-patches/$VERSION/features/*.patch comm/patches/
cp ../thunderbird-patches/$VERSION/misc/*.patch     comm/patches/
mv comm/patches/*-m-c.patch patches/

echo
echo "======================================================="
echo "Retrieving external patches for Mozilla repo"
echo "#!/bin/sh" > external.sh
grep " # " patches/series >> external.sh
sed -i -e 's/\/rev\//\/raw-rev\//' external.sh
sed -i -e 's/\(.*\) # \(.*\)/wget -nc \2 -O patches\/\1/' external.sh
chmod 700 external.sh
. ./external.sh
rm external.sh

echo
echo "======================================================="
echo "Retrieving external patches for comm repo"
cd comm
echo "#!/bin/sh" > external.sh
grep " # " patches/series >> external.sh
sed -i -e 's/\/rev\//\/raw-rev\//' external.sh
sed -i -e 's/\(.*\) # \(.*\)/wget -nc \2 -O patches\/\1/' external.sh
chmod 700 external.sh
. ./external.sh
rm external.sh
cd ..

# Copied and adapted from
# https://github.com/flathub/eu.betterbird.Betterbird/blob/master/apply-patches.sh
echo
echo "======================================================="
echo "Applying patch series for main repository"
cat patches/series | while read line || [[ -n $line ]]
  do 
    patch=$(echo $line | cut -f1 -d'#' | sed 's/ *$//')
    if [[ -n "${patch// }" ]]; then
      if [[ -f patches/$patch ]]; then
        echo Applying patch $patch ... 
        git apply --apply patches/$patch
      else
        echo Patch $patch not found. Exiting.
        exit 1
      fi
    fi
  done

echo
echo "======================================================="
echo "Applying patch series for comm repository"
cd comm
cat patches/series | while read line || [[ -n $line ]]
  do
    patch=$(echo $line | cut -f1 -d'#' | sed 's/ *$//')
    if [[ -n "${patch// }" ]]; then
      if [[ -f patches/$patch ]]; then
        echo Applying patch $patch ... 
        git apply --apply patches/$patch
      else
        echo Patch $patch not found. Exiting.
        exit 1
      fi
    fi
  done
cd ..

if [ "$APPLY" = "apply" ]; then
  echo
  echo "======================================================="
  echo "Patches applied, exiting."
  exit 0
fi

if [ -f ../mach_bootstrap_was_run_$VERSION ]; then
  echo
  echo "======================================================="
  echo "NOT running ./mach bootstrap since ./mach_bootstrap_was_run_$VERSION is present."
else
  echo
  echo "======================================================="
  echo "Running ./mach bootstrap ONCE. This is controlled by ./mach_bootstrap_was_run_$VERSION."
  echo "Note that this may require a restart of the shell."
  touch ../mach_bootstrap_was_run_$VERSION
  ./mach --no-interactive bootstrap --application-choice "Firefox for Desktop"
  rustup override set $RUST_VER
  if [ "$UNAME" = "Linux" ] && [ "$UNAME_ARCH" = "aarch64" ]; then
    echo
    echo "======================================================="
    echo "./mach bootstrap on Linux/aarch64 likely failed to complete."
    echo "Please follow the instructions here:"
    echo "https://github.com/Betterbird/thunderbird-patches/blob/main/build/build-env-aarch64.MD"
    echo "You only need to do all of these steps once or whenever the Betterbird build requires updated software versions."
    exit 1
  fi
fi

if [ "$UNAME" = "Linux" ]; then
  if [ "$UNAME_ARCH" = "x86_64" ]; then
    echo
    echo "======================================================="
    echo "Copying mozconfig-Linux"
    cp ../thunderbird-patches/$VERSION/mozconfig-Linux mozconfig
  elif [ "$UNAME_ARCH" = "aarch64" ]; then
    echo
    echo "======================================================="
    echo "Copying mozconfig-Linux-aarch64"
    cp ../thunderbird-patches/$VERSION/mozconfig-Linux-aarch64 mozconfig
  fi
elif [ "$UNAME" = "Darwin" ]; then
  echo
  echo "======================================================="
  echo "Copying mozconfig-Mac"
  cp ../thunderbird-patches/$VERSION/mozconfig-Mac mozconfig
elif [ "$UNAME" = "Windows" ]; then
  echo
  echo "======================================================="
  echo "Copying mozconfig for Windows"
  cp ../thunderbird-patches/$VERSION/mozconfig mozconfig
fi

echo
echo "======================================================="
echo "Starting the build"
if [ "$UNAME" = "Windows" ] && [ -d obj-x86_64-pc-mingw32 ]; then
  echo
  echo "======================================================="
  echo "Deleting .rc and .res files"
  cd obj-x86_64-pc-mingw32
  # del /s is much faster than find.
  /C/Windows/system32/cmd.exe /C"del/s *.rc"
  /C/Windows/system32/cmd.exe /C"del/s *.res"
  cd ..
fi
if [ "$NOCLOBBER" = "noclobber" ]; then
  echo
  echo "======================================================="
  echo "NOT running clobber."
else
  echo
  echo "======================================================="
  echo "Running clobber."
  ./mach clobber
fi

./mach build

echo
echo "======================================================="
echo "Packaging"
./mach package

cd ..
if [ "$UNAME" = "Linux" ]; then
  if [ "$UNAME_ARCH" = "x86_64" ]; then
    echo
    echo "======================================================="
    echo "Find your archive here"
    ls  $MOZILLA_DIR/obj-x86_64-pc-linux-gnu/dist/*.tar.bz2
  elif [ "$UNAME_ARCH" = "aarch64" ]; then
    echo
    echo "======================================================="
    echo "Find your archive here"
    ls  $MOZILLA_DIR/obj-aarch64-unknown-linux-gnu/dist/*.tar.bz2
  fi
elif [ "$UNAME" = "Darwin" ]; then
  echo
  echo "======================================================="
  echo "Find you disk image here"
  ls  $MOZILLA_DIR/obj-x86_64-apple-darwin/dist/*.mac.dmg
elif [ "$UNAME" = "Windows" ]; then
  echo
  echo "======================================================="
  echo "Find you disk image here"
  ls  $MOZILLA_DIR/obj-x86_64-pc-mingw32/dist/install/sea/*.installer.exe
fi
