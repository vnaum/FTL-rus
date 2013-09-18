#!/bin/sh

set -e

# build mod file
rm -rf build-tmp
mkdir build-tmp

# copy static files:
cp -r resources/* build-tmp

mkdir -p build-tmp/data
for f in orig-xml/events*.xml
do
  BN=`basename $f`
  POFILE="po/$BN.po"
  echo "translating $f + $POFILE -> build-tmp/data/$BN"
  ./apply-po $POFILE < $f > build-tmp/data/$BN
done

TESTGAMEDIR=$HOME/games/FTL_rus_test

cd build-tmp
zip -r $TESTGAMEDIR/data/mods/rus_test.ftl *
cd $TESTGAMEDIR/data
./modman
