#!/bin/bash

if [[ $(which pinta) ]];then
  pinta $(find ~/shots/ -type f -printf "%C@ %p\n" | sort -rn | head -n 1 | awk '{print $2}')
else
 notify-send "No Pinta" "Install pinta to open images" 
fi
