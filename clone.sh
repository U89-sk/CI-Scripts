#!/usr/bin/env bash

# Define Variables
DEVICE="RMX1851"
DT="https://github.com/U89-sk/android_device_realme_RMX1851-twrp.git"
OEM="realme"
TW_BRANCH="11"
TARGET=(
	recoveryimage
)


repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-${TW_BRANCH}
repo sync -j$(nproc) --force-sync --no-clone-bundle --no-tags
repo sync --force-sync

git clone ${DT} -b a11-RUI2 device/${OEM}/${DEVICE}
