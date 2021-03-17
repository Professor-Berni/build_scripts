#!/bin/bash

# ****************************************
# *** Got to the working directory!!!! ***
# ****************************************

if [ -f ../mka-los18.log ] ; then
  rm -f ../mka-los18.log
fi

rm -rf out

export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true

. build/envsetup.sh

lunch lineage_suzuran-userdebug

m -j$(grep -c ^processor /proc/cpuinfo) bacon > ../mka-los18.log 2>&1

m -j$(grep -c ^processor /proc/cpuinfo) systemimage

