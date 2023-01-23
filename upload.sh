#!/usr/bin/env bash

# Define Variables
DEVICE="RMX1851"
DT="https://github.com/U89-sk/android_device_realme_RMX1851-twrp.git"
OEM="realme"
SHRP_BRANCH="11"
TARGET=(
	recoveryimage
)

cd /tmp/cirrus-ci-build/out/target/product/RMX1851/

curl -sL https://git.io/file-transfer | sh
./transfer wet recovery.img

