#!/bin/bash

user="y" # CHANGE THIS TO YOUR USER

######################################################################################

echo "##### INSTALL DISTRO APPS #####"

sh ./eos-apps.sh 

######################################################################################


echo "##### INSTALL FLATPAK #####"

sh ./flatpak-apps.sh

flatpak override --user --filesystem=home

######################################################################################

echo "##### SETUP FISH #####"

mkdir -v ~/.config/fish

curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/main/fish/config.fish \
-o ~/.config/fish/config.fish

sudo usermod -s /usr/bin/fish $user

######################################################################################

echo "##### COPY XFCE CONFIG #####"

cp -v Pictures/* ~/Pictures/
cp -rfv xfce4 ~/.config/

######################################################################################

echo "##### SETUP FIREWALL #####"

sudo ufw disable
sudo cp -fv ./firewall/user.rules /etc/ufw/
sudo cp -fv ./firewall/user6.rules /etc/ufw/
sudo ufw enable
