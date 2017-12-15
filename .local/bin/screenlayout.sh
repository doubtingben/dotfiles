#!/bin/bash

set -ex
set -o pipefail

if [[ ${HOSTNAME} == "mini-monitor" ]];then
  echo "mini-monitor!"
  # Rotate screen to portarit
  xrandr -d :0 -o right
fi

# Tuen off screen blanking
xset s off -d :0

