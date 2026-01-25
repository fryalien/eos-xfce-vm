#!/bin/bash

user="y" # CHANGE THIS TO YOUR USER

######################################################################################

echo "##### SET SUDO 3 hrs #####"

./set-sudo-timeout.sh

######################################################################################

echo "##### SET PRESENTATION MODE ON #####"

xfconf-query -c xfce4-power-manager \
  -p /xfce4-power-manager/presentation-mode \
  -t bool \
  -s true \
  --create

######################################################################################

echo "##### DISABLE LOCK AND IDLE #####"

xfconf-query -c xfce4-screensaver -p /lock/enabled -s false
xfconf-query -c xfce4-screensaver -p /saver/mode -s 0
xfconf-query -c xfce4-screensaver -p /saver/idle-activation/delay -s 0
xfconf-query -c xfce4-screensaver -p /lock/sleep-activation -s false


######################################################################################

echo "##### STOP PERIODIC PING #####"

./stop-ping.sh

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

echo "##### SETUP FASTFETCH #####"

mkdir -v ~/.config/fastfetch

curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/refs/heads/main/fastfetch/config-simple.jsonc \
-o ~/.config/fastfetch/config.jsonc

######################################################################################

echo "##### SETUP MICRO EDITOR #####"

./set-micro-theme.sh

######################################################################################

echo "##### SETUP FIREWALL #####"

sudo ufw disable
sudo cp -fv ./firewall/user.rules /etc/ufw/
sudo cp -fv ./firewall/user6.rules /etc/ufw/
sudo ufw enable

######################################################################################

echo "##### COPY WALLPAPERS #####"

cp -v Pictures/* ~/Pictures/

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./xfce-config/xfce4 ~/.config/
cp -rfv ./xfce-config/Thunar ~/.config/
cp -rfv ./xfce-config/gtk-3.0 ~/.config/

echo "##### LOAD vm PANEL CONFIG #####"

xfce4-panel-profiles load ./xfce-config/vm-xfce-panel.tar.bz2
