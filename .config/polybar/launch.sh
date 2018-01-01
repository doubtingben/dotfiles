#!/bin/bash


# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

set -ex

# set sizes
if [[ "$(hostname)" == "bwilson-XPS-13-9360" ]];then
  echo "bwilson-XPS-13-9360 polybar!"
  polybar --config=${HOME}/.config/polybar/config-bwilson-XPS-13-9360  example &
else
  echo "default polybar!"
  polybar example &
fi

echo "Bars launched..."
