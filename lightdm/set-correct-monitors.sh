#!/bin/sh

# Set VGA1 monitor to primary in login for LightDM.
mode="$(xrandr -q|grep -A1 "VGA1 connected"| tail -1 |awk '{ print $1 }')"
if [ -n "$mode" ]; then
  xrandr --output VGA1 --primary --mode 1440x900
fi
