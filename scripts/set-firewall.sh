#!/bin/bash

echo "DISABLE UFW"
sudo ufw disable

echo "Copy files from Github"

curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/refs/heads/main/firewall-rules-ufw/user.rules \
-o ./config/firewall/user.rules

curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/refs/heads/main/firewall-rules-ufw/user6.rules \
-o ./config/firewall/user6.rules

echo "Copy files to default folder" 
sudo cp -fv ./config/firewall/user.rules /etc/ufw/
sudo cp -fv ./config/firewall/user6.rules /etc/ufw/

echo "Reload UFW"
sudo ufw reload

echo "Enable UFW"
sudo ufw --force enable

echo "UFW status:"
sudo ufw status verbose

echo "Enable UFW at boot"
sudo systemctl enable ufw

echo "Check UFW service status"
systemctl is-enabled ufw

