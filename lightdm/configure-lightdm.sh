#!/bin/sh

# Write to lightdm.conf file the path to setting the monitor VGA1 as primary.
sed -i 's/#display-setup-script=/display-setup-script=\/home\/neuromante\/dotfiles\/lightdm\/set-correct-monitors.sh/' /etc/lightdm/lightdm.conf
