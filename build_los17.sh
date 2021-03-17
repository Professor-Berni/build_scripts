#!/bin/bash

# ****************************************
# *** Got to the working directory!!!! ***
# ****************************************

if [ -f ../mka-los17.log ] ; then
  rm -f ../mka-los17.log
fi

rm -rf out

export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true

. build/envsetup.sh

lunch lineage_suzuran-userdebug

mka -j$(grep -c ^processor /proc/cpuinfo) bacon > ../mka-los17.log 2>&1

mka -j$(grep -c ^processor /proc/cpuinfo) systemimage

