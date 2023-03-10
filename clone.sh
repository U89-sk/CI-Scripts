#!/usr/bin/env bash

# Define Variables
DEVICE="RMX1851"
DT="https://github.com/U89-sk/android_device_realme_RMX1851-pbrp.git"
OEM="realme"
PBRP_BRANCH="12.1"

# Clone and sync Recovery Source
repo init --depth=1 -u https://github.com/PitchBlackRecoveryProject/manifest_pb.git -b android-${PBRP_BRANCH}
repo sync -j$(nproc) --force-sync --no-clone-bundle --no-tags
repo sync --force-sync

# Clone Devive Tree here
git clone ${DT} -b android-13.0 device/${OEM}/${DEVICE}
