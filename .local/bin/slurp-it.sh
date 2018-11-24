#!/bin/bash

SHOTS_DIR=${HOME}/shots/
SHOT=$(date +%Y-%m-%d-%H:%m:%s)
mkdir -p ${SHOTS_DIR}
slurp | grim -g - "${SHOTS_DIR}/${SHOT}.png"
