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

if [ -d comm ]; then
  cd comm
else
  echo "Mozilla directory $MOZILLA_DIR/comm not found"
  exit 1
fi

echo
echo "==================================================================="
echo "Positioning before specified patch $PATCH_NAME on $MOZILLA_DIR/comm"
hg qgo $PATCH_NAME
hg qpop

echo
echo "======================================================="
echo "Copying patches and series file from thunderbird-patches"
cp -u -v ../../thunderbird-patches/$VERSION/series           .hg/patches/series
cp -u -v ../../thunderbird-patches/$VERSION/branding/*.patch .hg/patches/
cp -u -v ../../thunderbird-patches/$VERSION/bugs/*.patch     .hg/patches/
cp -u -v ../../thunderbird-patches/$VERSION/features/*.patch .hg/patches/
cp -u -v ../../thunderbird-patches/$VERSION/misc/*.patch     .hg/patches/
# XXX TODO: This copied all m-c patches to comm, so remove them again.
rm .hg/patches/*-m-c.patch 2> /dev/null

if [ -d ../../private-patches ]; then
  echo
  echo "======================="
  echo "Copying private patches"
  cp ../../private-patches/*.patch .hg/patches/
fi

echo
echo "======================================================="
echo "Pushing all patches"
hg qpush -all
hg qseries

echo
echo "================================================================"
echo "Patches applied, please: cd $MOZILLA_DIR && ./mach build && ./mach package"
exit 0
