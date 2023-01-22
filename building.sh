#!/usr/bin/env bash

# Define Variables
DEVICE="z3s"
DT="https://github.com/Nico170420/android_device_samsung_z3s.git"
OEM="samsung"
TW_BRANCH="12.1"
TARGET=(
	pbrp
)

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_${DEVICE}-eng
mka -j$(nproc) ${TARGET}
