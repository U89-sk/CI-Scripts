#!/usr/bin/env bash

# Define Variables
DEVICE="RMX1851"
TARGET=(
	recoveryimage
)

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_${DEVICE}-eng
mka -j$(nproc) ${TARGET}
