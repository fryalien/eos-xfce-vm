#!/bin/bash

user="y" # CHANGE THIS TO YOUR USER

######################################################################################

echo "##### SET SUDO 3 hrs #####"

./scripts/set-sudo-timeout.sh

######################################################################################

echo "##### NO LOCK, NO BLANK SCREEN #####"

./scripts/xfce-no-lock.sh

######################################################################################

echo "##### STOP PERIODIC PING #####"

./scripts/stop-ping.sh

######################################################################################

echo "##### INSTALL DISTRO APPS #####"

sh ./scripts/eos-apps.sh 

######################################################################################


echo "##### INSTALL FLATPAK #####"

sh ./scripts/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

./scripts/flatpak-config.sh

######################################################################################

echo "##### SETUP FISH #####"

./scripts/set-fish-config.sh

######################################################################################

echo "##### SETUP FASTFETCH #####"

./scripts/set-fastfetch.sh

######################################################################################

echo "##### SETUP MICRO EDITOR #####"

./scripts/set-micro-theme.sh

######################################################################################

echo "##### SETUP FIREWALL #####"

./scripts/set-firewall.sh

######################################################################################

echo "##### COPY WALLPAPERS #####"

cp -v ./config/Pictures/* ~/Pictures/

echo "##### COPY XFCE CONFIG #####"

./scripts/xfce-config.sh
