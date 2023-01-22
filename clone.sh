#!/usr/bin/env bash

# Define Variables
DEVICE="z3s"
DT="https://github.com/Nico170420/android_device_samsung_z3s.git"
OEM="samsung"
TWRP_BRANCH="12.1"
TARGET=(
	recoveryimage
)


repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -j$(nproc) --force-sync --no-clone-bundle --no-tags
repo sync --force-sync

git clone ${DT} -b twrp device/${OEM}/${DEVICE}
