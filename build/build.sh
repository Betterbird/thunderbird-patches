#!/bin/sh

if [ "$#" -ne 1 ] ; then
  echo "Usage: $0 VERSION" >&2
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

cd $MOZILLA_DIR
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
cp ../thunderbird-patches/$VERSION/series-M-C      .hg/patches/series
cp ../thunderbird-patches/$VERSION/series     comm/.hg/patches/series
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
