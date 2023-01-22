#!/usr/bin/env bash

# Define Variables
DEVICE="z3s"
DT="https://github.com/Nico170420/android_device_samsung_z3s.git"
OEM="samsung"
PBRP_BRANCH="12.1"
TARGET=(
	pbrp
)


repo init --depth=1 -u https://github.com/PitchBlackRecoveryProject/manifest_pb.git -b android-${PBRP_BRANCH}
repo sync -j$(nproc) --force-sync --no-clone-bundle --no-tags
repo sync --force-sync

git clone ${DT} -b pbrp device/${OEM}/${DEVICE}
