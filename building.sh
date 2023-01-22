#!/usr/bin/env bash

# Define Variables
DEVICE="RMX1851"
OEM="realme"
TARGET=(
	pbrp
)

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_${DEVICE}-eng
mka -j$(nproc) ${TARGET}
