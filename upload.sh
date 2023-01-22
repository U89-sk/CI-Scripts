#!/usr/bin/env bash

# Define Variables
DEVICE="RMX1851"
DT="https://github.com/U89-sk/android_device_realme_RMX1851-pbrp.git"
OEM="realme"
PBRP_BRANCH="12.1"
TARGET=(
	recoveryimage
)

cd /tmp/cirrus-ci-build/out/target/product/z3s/

curl -sL https://git.io/file-transfer | sh
./transfer wet PBRP*.zip

