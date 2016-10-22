#!/bin/sh

# Write to lightdm.conf file the path to setting the monitors in a laptop with two external monitors, HDMI and VGA.
sed -i 's/#display-setup-script=/display-setup-script=\/home\/neuromante\/dotfiles\/lightdm\/set-correct-monitors.sh/' /etc/lightdm/lightdm.conf
