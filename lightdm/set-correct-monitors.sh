#!/bin/sh

# Set HDMI1 monitor to primary in login for LightDM, then put VGA1 right of this.
mode="$(xrandr -q|grep -A1 "HDMI1 connected"| tail -1 |awk '{ print $1 }')"
if [ -n "$mode" ]; then
  xrandr --output LVDS1 --off
  xrandr --output VGA1 --off
  xrandr --output HDMI1 --primary --mode 1920x1080
  xrandr --output VGA1 --mode 1920x1080 --right-of HDMI1
fi
