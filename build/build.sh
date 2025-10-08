#!/bin/bash

if [ "$#" -ne 1 ] && [ "$#" -ne 2 ]; then
  echo "Usage: $0 VERSION [apply|noclobber]" >&2
  exit 1
fi

APPLY=""
NOCLOBBER=""
DELRES=""
if [ "$#" -eq 2 ]; then
  if [ "$2" = "apply" ]; then
    APPLY="apply"
  elif [ "$2" = "noclobber" ]; then
    NOCLOBBER="noclobber"
  elif [ "$2" = "delres" ]; then
    DELRES="delres"
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
if [ "$VERSION" -ge 140 ]; then
  ARCHIVE_SUFFIX="tar.xz"
else
  ARCHIVE_SUFFIX="tar.bz2"
fi
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
if [ "$UNAME" = "Darwin" ]; then
  UNAME_ARCH=$(uname -m)
fi
# Windows: Cater for newer and older MozillaBuild: MINGW32_NT-6.2 or MSYS_NT-10
if [[ "$UNAME" == *"_NT-"* ]]; then
  UNAME="Windows"
fi

. ./thunderbird-patches/$VERSION/$VERSION.sh

echo
echo "======================================================="
echo "Preparing Mozilla repo"
echo "  for $MOZILLA_REPO"
echo "  at $MOZILLA_REV"

MOZILLA_DIR="$(basename $MOZILLA_REPO)"

if [ -d $MOZILLA_DIR ]; then
  cd $MOZILLA_DIR
else
  echo "Mozilla directory $MOZILLA_DIR not found"
  echo "Do you want to clone the Mozilla repo?"
  echo "This will take 30 minutes or more and will pull 2 GB of data."
  read -p "Proceed? (Y/N) " ANSWER
  if [ "$ANSWER" != "Y" ]; then
    echo "Y not received, exiting"
    exit 1
  fi
  echo
  echo "======================================================="
  echo "Cloning $MOZILLA_REPO"
  hg clone $MOZILLA_REPO || exit 1
  echo
  echo "======================================================="
  echo "Cloning $COMM_REPO"
  cd $MOZILLA_DIR
  hg clone $COMM_REPO comm || exit 1
fi

if [ "$UNAME" = "Windows" ] && [ "$DELRES" = "delres" ] && [ -d obj-x86_64-pc-windows-msvc ]; then
  echo
  echo "======================================================="
  echo "Deleting .rc and .res files"
  cd obj-x86_64-pc-windows-msvc
  # del /s is much faster than find.
  /C/Windows/system32/cmd.exe /C"del/s *.rc"
  /C/Windows/system32/cmd.exe /C"del/s *.res"
  cd ..
  exit 0
fi

if [ "$UNAME" = "Linux" ] || [ "$UNAME" = "Darwin" ]; then
  MQ=$(grep "mq =" .hg/hgrc)
  if [ "|$MQ|" = "||" ]; then
    echo "[extensions]" >> .hg/hgrc
    echo "mq =" >> .hg/hgrc
  fi
  MQ=$(grep "mq =" comm/.hg/hgrc)
  if [ "|$MQ|" = "||" ]; then
    echo "[extensions]" >> comm/.hg/hgrc
    echo "mq =" >> comm/.hg/hgrc
  fi
else
  # On Windows we assume mercurial.ini in the build directory.
  if [ -f ../mercurial.ini ]; then
    MQ=$(grep "mq =" ../mercurial.ini)
    if [ "|$MQ|" = "||" ]; then
      echo "[extensions]" >> ../mercurial.ini
      echo "mq =" >> ../mercurial.ini
    fi
  fi
fi

set -e # fail on failing commands
# this is not at start of file due to grep "mq =" causing exit

echo
echo "======================================================="
echo "Removing old patches from $MOZILLA_DIR and updating"
hg revert --all
hg qpop --all
hg pull -r $MOZILLA_REV
hg update -r $MOZILLA_REV

echo
echo "======================================================="
echo "Preparing comm repo"
echo "  for $COMM_REPO"
echo "  at $COMM_REV"

cd comm
echo
echo "======================================================="
echo "Removing old patches from $MOZILLA_DIR/comm and updating"
hg revert --all
hg qpop --all
hg pull -r $COMM_REV
hg update -r $COMM_REV
cd ..

echo
echo "======================================================="
echo "Copying patches and series file from thunderbird-patches"
if ! [ -d .hg/patches ]; then
  mkdir .hg/patches
fi
if ! [ -d comm/.hg/patches ]; then
  mkdir comm/.hg/patches
fi
cp ../thunderbird-patches/$VERSION/series$MOZU           .hg/patches/series
cp ../thunderbird-patches/$VERSION/series           comm/.hg/patches/series
cp ../thunderbird-patches/$VERSION/branding/*.patch comm/.hg/patches/
cp ../thunderbird-patches/$VERSION/bugs/*.patch     comm/.hg/patches/
cp ../thunderbird-patches/$VERSION/features/*.patch comm/.hg/patches/
cp ../thunderbird-patches/$VERSION/misc/*.patch     comm/.hg/patches/
mv comm/.hg/patches/*$MOZ.patch .hg/patches/

if [ -d ../private-patches ]; then
  echo
  echo "======================="
  echo "Copying private patches"
  cp ../private-patches/*.patch comm/.hg/patches/
fi

echo
echo "======================================================="
echo "Retrieving external patches for Mozilla repo"
echo "#!/bin/sh" > external.sh
grep " # " .hg/patches/series | grep -v "^#" >> external.sh || true
sed -i -e 's/\/rev\//\/raw-rev\//' external.sh
sed -i -e 's/\(.*\) # \(.*\)/wget -nc \2 -O .hg\/patches\/\1 || true/' external.sh
chmod 700 external.sh
. ./external.sh
rm external.sh

echo
echo "======================================================="
echo "Retrieving external patches for comm repo"
cd comm
echo "#!/bin/sh" > external.sh
grep " # " .hg/patches/series | grep -v "^#" >> external.sh || true
sed -i -e 's/\/rev\//\/raw-rev\//' external.sh
sed -i -e 's/\(.*\) # \(.*\)/wget -nc \2 -O .hg\/patches\/\1 || true/' external.sh
chmod 700 external.sh
. ./external.sh
rm external.sh
cd ..

echo
echo "======================================================="
echo "Pushing all patches"
hg qpush -all
hg qseries
cd comm
hg qpush -all
hg qseries
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
  $HOME/.cargo/bin/rustup override set $RUST_VER
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
elif [ "$UNAME" = "Darwin" ] && [ "$UNAME_ARCH" = "x86_64" ]; then
  echo
  echo "======================================================="
  echo "Copying mozconfig-Mac"
  cp ../thunderbird-patches/$VERSION/mozconfig-Mac mozconfig
elif [ "$UNAME" = "Darwin" ] && [ "$UNAME_ARCH" = "arm64" ]; then
  echo
  echo "======================================================="
  echo "Copying mozconfig-Mac-arm64"
  cp ../thunderbird-patches/$VERSION/mozconfig-Mac-arm64 mozconfig
elif [ "$UNAME" = "Windows" ]; then
  echo
  echo "======================================================="
  echo "Copying mozconfig for Windows"
  cp ../thunderbird-patches/$VERSION/mozconfig mozconfig
fi

echo
echo "======================================================="
echo "Starting the build"
if [ "$UNAME" = "Windows" ] && [ -d obj-x86_64-pc-windows-msvc ]; then
  echo
  echo "======================================================="
  echo "Deleting .rc and .res files"
  cd obj-x86_64-pc-windows-msvc
  # del /s is much faster than find.
  /C/Windows/system32/cmd.exe /C"del/s *.rc"
  /C/Windows/system32/cmd.exe /C"del/s *.res"
  cd ..
fi
if [ "$NOCLOBBER" = "noclobber" ]; then
  echo
  echo "======================================================="
  echo "NOT running clobber."
  if [ "$UNAME" = "Linux" ]; then
    if [ "$UNAME_ARCH" = "x86_64" ] && [ -d obj-x86_64-pc-linux-gnu ]; then
      touch obj-x86_64-pc-linux-gnu/CLOBBER
    elif [ "$UNAME_ARCH" = "aarch64" ] && [ -d obj-aarch64-unknown-linux-gnu ]; then
      touch obj-aarch64-unknown-linux-gnu/CLOBBER
    fi
  elif [ "$UNAME" = "Darwin" ] && [ -d obj-x86_64-apple-darwin ] && [ "$UNAME_ARCH" = "x86_64" ]; then
    touch obj-x86_64-apple-darwin/CLOBBER
  elif [ "$UNAME" = "Darwin" ] && [ -d obj-aarch64-apple-darwin ] && [ "$UNAME_ARCH" = "arm64" ]; then
    touch obj-aarch64-apple-darwin/CLOBBER
  elif [ "$UNAME" = "Windows" ] && [ -d obj-x86_64-pc-windows-msvc ]; then
    touch obj-x86_64-pc-windows-msvc/CLOBBER
  fi
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
    ls $MOZILLA_DIR/obj-x86_64-pc-linux-gnu/dist/*.$ARCHIVE_SUFFIX
  elif [ "$UNAME_ARCH" = "aarch64" ]; then
    echo
    echo "======================================================="
    echo "Find your archive here"
    ls $MOZILLA_DIR/obj-aarch64-unknown-linux-gnu/dist/*.$ARCHIVE_SUFFIX
  fi
elif [ "$UNAME" = "Darwin" ] && [ "$UNAME_ARCH" = "x86_64" ]; then
  echo
  echo "======================================================="
  echo "Find your disk image here"
  ls $MOZILLA_DIR/obj-x86_64-apple-darwin/dist/*.mac.dmg
elif [ "$UNAME" = "Darwin" ] && [ "$UNAME_ARCH" = "arm64" ]; then
  echo
  echo "======================================================="
  echo "Find your disk image here"
  ls $MOZILLA_DIR/obj-aarch64-apple-darwin/dist/*.mac.dmg
elif [ "$UNAME" = "Windows" ]; then
  echo
  echo "======================================================="
  echo "Find your disk image here"
  ls $MOZILLA_DIR/obj-x86_64-pc-windows-msvc/dist/install/sea/*.installer.exe
fi
