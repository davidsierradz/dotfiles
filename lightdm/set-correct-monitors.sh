#!/bin/sh

# Three monitor desktop
# Set HDMI2 monitor to primary in login for LightDM, then put VGA1 left of this and HDMI1 right.
mode="$(xrandr -q|grep -A1 "HDMI1 connected"| tail -1 |awk '{ print $1 }')"
if [ -n "$mode" ]; then
    xrandr --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output eDP1 --primary --mode 1366x768 --pos 248x1080 --rotate normal --output VIRTUAL1 --off
fi

# One monitor laptop
# xrandr --output VGA1 --primary --mode 1680x1050
