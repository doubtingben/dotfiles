#!/bin/bash


# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

set -ex

# set sizes
if [[ -f ${HOME}/.config/polybar/config-$(hostname) ]];then
  echo "Loading config-$(hostname)!"
  polybar --config=${HOME}/.config/polybar/config-$(hostname)  example &
else
  echo "Loading default polybar!"
  polybar example &
fi

echo "Bars launched..."
