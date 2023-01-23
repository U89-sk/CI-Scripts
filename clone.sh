#!/usr/bin/env bash

# Define Variables
DEVICE="RMX1851"
DT="https://github.com/U89-sk/android_device_realme_RMX1851-shrp.git"
OEM="realme"
SHRP_BRANCH="12.1"
TARGET=(
	recoveryimage
)


repo init --depth=1 -u https://github.com/SHRP/manifest.git  -b shrp-${SHRP_BRANCH}
repo sync -j$(nproc) --force-sync --no-clone-bundle --no-tags
repo sync --force-sync

git clone ${DT} -b android-13.0 device/${OEM}/${DEVICE}
