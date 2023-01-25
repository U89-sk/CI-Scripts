#!/usr/bin/env bash

# Define Variables
DEVICE="RMX1851"

#cd /tmp/cirrus-ci-build/out/target/product/RMX1851/

#curl -sL https://git.io/file-transfer | sh
#./transfer wet recovery.img

# Outputfolder
Output="out/target/product/${Device}"

# Code
if [ -a $Output/SHRP*.zip ]; then
    Files="SHRP*.zip"
elif [ -a $Output/PBRP*.zip ]; then
    Files="PBRP*.zip"
else
    Files="recovery.img"
fi

# Download Upload Script
curl -sL https://git.io/file-transfer | sh

# Upload
./transfer wet ${Output}/${Files}
