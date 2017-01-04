#!/bin/sh

# Set HDMI2 monitor to primary in login for LightDM, then put VGA1 right of this.
mode="$(xrandr -q|grep -A1 "HDMI2 connected"| tail -1 |awk '{ print $1 }')"
if [ -n "$mode" ]; then
  xrandr --output VGA1 --off
  xrandr --output HDMI2 --primary --mode 1920x1080
  xrandr --output VGA1 --mode 1920x1080 --left-of HDMI2
fi
