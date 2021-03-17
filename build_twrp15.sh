#!/bin/bash

# ****************************************
# *** Got to the working directory!!!! ***
# ****************************************

if [ -f ../mka-twrp.log ] ; then
  rm -f ../mka-twrp.log
fi

rm -rf out

. build/envsetup.sh

lunch twrp_suzuran-userdebug

m -j$(grep -c ^processor /proc/cpuinfo) recoveryimage > ../mka-twrp.log 2>&1
