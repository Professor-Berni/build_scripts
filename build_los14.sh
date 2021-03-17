#!/bin/bash

# ****************************************
# *** Got to the working directory!!!! ***
# ****************************************

if [ -f ../mka-los14.log ] ; then
  rm -f ../mka-los14.log
fi

rm -rf out

export WITH_SU=true

. build/envsetup.sh

lunch lineage_suzuran-userdebug

mka -j$(grep -c ^processor /proc/cpuinfo) bacon > ../mka-los14.log 2>&1

