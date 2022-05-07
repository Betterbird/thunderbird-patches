#!/bin/sh

if [ "$#" -ne 1 ] ; then
  echo "Usage: $0 VERSION" >&2
  exit 1
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

. ./thunderbird-patches/$VERSION/$VERSION.sh

echo
echo "======================================================="
echo "Preparing Mozilla repo"
echo "  for $mozilla_repo"
echo "  at $mozilla_rev"

MOZILLA_DIR="$(basename $mozilla_repo)"

if ! [ -d mercurial.ini ]; then
  echo "[extensions]" > mercurial.ini
  echo "mq =" >> mercurial.ini
fi

if [ -d $MOZILLA_DIR ]; then
  cd $MOZILLA_DIR
else
  echo "Mozilla directory $MOZILLA_DIR not found"
  echo "Do you want to clone the Mozilla repo."
  echo "This will take 30 minutes or more and will pull 2 GB of data."
  read -p "Proceed? (Y/N) " ANSWER
  if [ "$ANSWER" != "Y" ]; then
    echo "Y not received, exiting"
    exit 1
  fi
  echo
  echo "======================================================="
  echo "Cloning $mozilla_repo"
  hg clone $mozilla_repo
  echo
  echo "======================================================="
  echo "Cloning $comm_repo"
  cd $MOZILLA_DIR
  hg clone $comm_repo comm
fi

if [ `uname` = "Linux" ]; then
  echo
  echo "======================================================="
  echo "Copying mozconfig-Linux"
  cp ../thunderbird-patches/$VERSION/mozconfig-Linux mozconfig
elif [ `uname` = "Darwin" ]; then
  echo
  echo "======================================================="
  echo "Copying mozconfig-Mac"
  cp ../thunderbird-patches/$VERSION/mozconfig-Mac mozconfig
fi

echo
echo "======================================================="
echo "Removing old patches from $MOZILLA_DIR and updating"
hg revert --all
hg qpop --all
hg pull
hg update -r $mozilla_rev

echo
echo "======================================================="
echo "Preparing comm repo"
echo "  for $comm_repo"
echo "  at $comm_rev"

cd comm
echo
echo "======================================================="
echo "Removing old patches from $MOZILLA_DIR/comm and updating"
hg revert --all
hg qpop --all
hg pull
hg update -r $comm_rev
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
cp ../thunderbird-patches/$VERSION/series-M-C            .hg/patches/series
cp ../thunderbird-patches/$VERSION/series           comm/.hg/patches/series
cp ../thunderbird-patches/$VERSION/branding/*.patch comm/.hg/patches/
cp ../thunderbird-patches/$VERSION/bugs/*.patch     comm/.hg/patches/
cp ../thunderbird-patches/$VERSION/features/*.patch comm/.hg/patches/
cp ../thunderbird-patches/$VERSION/misc/*.patch     comm/.hg/patches/
mv comm/.hg/patches/*-m-c.patch .hg/patches/

echo
echo "======================================================="
echo "Retrieving external patches for Mozilla repo"
echo "#!/bin/sh" > external.sh
grep " # " .hg/patches/series >> external.sh
sed -i -e 's/\/rev\//\/raw-rev\//' external.sh
sed -i -e 's/\(.*\) # \(.*\)/wget \2 -O .hg\/patches\/\1/' external.sh
chmod 700 external.sh
. ./external.sh
rm external.sh

echo
echo "======================================================="
echo "Retrieving external patches for comm repo"
cd comm
echo "#!/bin/sh" > external.sh
grep " # " .hg/patches/series >> external.sh
sed -i -e 's/\/rev\//\/raw-rev\//' external.sh
sed -i -e 's/\(.*\) # \(.*\)/wget \2 -O .hg\/patches\/\1/' external.sh
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

echo
echo "======================================================="
echo "Starting the build"
./mach clobber
./mach build

echo
echo "======================================================="
echo "Packaging"
./mach package
