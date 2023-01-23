#!/usr/bin/env bash

# Define Variables
DEVICE="RMX1851"
DT="https://github.com/U89-sk/android_device_realme_RMX1851-twrp.git"
OEM="realme"
TW_BRANCH="11"
TARGET=(
	recoveryimage
)

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_${DEVICE}-eng
mka -j$(nproc) ${TARGET}
