#!/bin/bash

SHOTS_DIR=${HOME}/shots/
SHOT=$(date +%Y-%m-%d-%H:%m:%s)
mkdir -p ${SHOTS_DIR}
scrot "${SHOTS_DIR}/${SHOT}.png"
notify-send "Screenshot" "Taken!"
