#!/usr/bin/env bash

# Define Variables
DEVICE="z3s"
OEM="samsung"
TARGET=(
	pbrp
)

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_${DEVICE}-eng
mka -j$(nproc) ${TARGET}
