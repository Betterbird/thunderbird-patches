#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 VERSION PATCH_NAME" >&2
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

DIFF=$(diff -q refresh-comm-patches.sh thunderbird-patches/build/refresh-comm-patches.sh)
if [ "|$DIFF|" != "||" ]; then
  echo "Newer version of build script available."
  echo "Please |cp thunderbird-patches/build/refresh-comm-patches.sh .| and restart"
  exit 1
fi

if ! [ -d thunderbird-patches/"$1" ]; then
  echo "No such version" >&2
  exit 1
fi

VERSION="$1"
PATCH_NAME="$2"

. ./thunderbird-patches/$VERSION/$VERSION.sh

echo
echo "======================================================="
echo "Checking Mozilla repo"
echo "  for $MOZILLA_REPO"

MOZILLA_DIR="$(basename $MOZILLA_REPO)"

if [ -d $MOZILLA_DIR ]; then
  cd $MOZILLA_DIR
else
  echo "Mozilla directory $MOZILLA_DIR not found"
  exit 1
fi

QPARENT=`hg tags | grep qparent | sed s/.*://`
if [ $QPARENT != ${MOZILLA_REV:0:12} ]; then
  echo "Parent of Mozilla repo is $QPARENT, expected ${MOZILLA_REV:0:12}"
  exit 1
fi

if [ -d comm ]; then
  cd comm
else
  echo "Mozilla directory $MOZILLA_DIR/comm not found"
  exit 1
fi

QPARENT=`hg tags | grep qparent | sed s/.*://`
if [ $QPARENT != ${COMM_REV:0:12} ]; then
  echo "Parent of comm repo is $QPARENT, expected ${COMM_REV:0:12}"
  exit 1
fi

echo
echo "======================================================="
echo "Positioning before specified patch $PATCH_NAME on $MOZILLA_DIR/comm"
hg qgo $PATCH_NAME
hg qpop

echo
echo "======================================================="
echo "Copying patches and series file from thunderbird-patches"
# cp -u doesn't work on Mac :-(
rsync -u -i ../../thunderbird-patches/$VERSION/series .hg/patches/series
rsync -u -i ../../thunderbird-patches/$VERSION/branding/*.patch --exclude=*-m-c.patch .hg/patches/
rsync -u -i ../../thunderbird-patches/$VERSION/bugs/*.patch     --exclude=*-m-c.patch .hg/patches/
rsync -u -i ../../thunderbird-patches/$VERSION/features/*.patch --exclude=*-m-c.patch .hg/patches/
rsync -u -i ../../thunderbird-patches/$VERSION/misc/*.patch     --exclude=*-m-c.patch .hg/patches/

if [ -d ../../private-patches ]; then
  echo
  echo "======================================================="
  echo "Copying private patches"
  cp ../../private-patches/*.patch .hg/patches/
fi

echo
echo "======================================================="
echo "Retrieving external patches for comm repo"
echo "#!/bin/sh" > external.sh
grep " # " .hg/patches/series >> external.sh || true
sed -i -e 's/\/rev\//\/raw-rev\//' external.sh
sed -i -e 's/\(.*\) # \(.*\)/wget -nc \2 -O .hg\/patches\/\1 || true/' external.sh
chmod 700 external.sh
. ./external.sh
rm external.sh

echo
echo "======================================================="
echo "Pushing all patches"
hg qpush -all
hg qseries

echo
echo "======================================================="
echo "Patches applied. Continue to build?"
read -p "Proceed? (Y/N) " ANSWER
if [ "$ANSWER" != "Y" ]; then
  echo "When ready, please: cd $MOZILLA_DIR && ./mach build && ./mach package"
  exit 0
fi

echo
echo "======================================================="
echo "Building"
cd ..
./mach build

echo
echo "======================================================="
echo "Packaging"
./mach package
