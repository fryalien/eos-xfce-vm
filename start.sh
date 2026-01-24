#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

# INSTALL EVERYTHING AND MAKE A LOG OF IT

log="./install-$(date +%Y-%m-%d_%H:%M).log"

######################################################################################

echo "##### SET SUDO 3 hrs #####"

./scripts/set-sudo-timeout.sh

######################################################################################

echo "##### SET PRESENTATION MODE ON #####"

xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -s true

######################################################################################

echo "##### STOP PERIODIC PING #####"

./scripts/stop-ping.sh

######################################################################################

echo "##### START INSTALLATION #####"

./scripts/eos-xfce-install.sh  | tee -a "$log"

######################################################################################

echo "##### SCRIPT ENDED #####"

date
