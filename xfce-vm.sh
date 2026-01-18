#!/bin/bash

log_file="./install-$(date +%Y-%m-%d_%H:%M).log"
user="y" # CHANGE THIS TO YOUR USER

######################################################################################

echo "##### INSTALL FISH #####" | tee -a "$log_file"

sudo pacman -S --noconfirm --needed fish | tee -a "$log_file"

mkdir -p ~/.config/fish | tee -a "$log_file"
#curl -L \
#https://raw.githubusercontent.com/fryalien/dotfiles/main/fish/config.fish \
#-o ~/.config/fish/config.fish | tee -a "$log_file"

cp config.fish ~/.config/fish/ | tee -a "$log_file"

sudo usermod -s /usr/bin/fish $user | tee -a "$log_file"

######################################################################################

echo "##### INSTALL PARU #####" | tee -a "$log_file"

yay -S --noconfirm --needed paru | tee -a "$log_file"

######################################################################################

echo "##### INSTALL PACMAN #####" | tee -a "$log_file"

sudo pacman -S --noconfirm --needed micro | tee -a "$log_file"
sudo pacman -S --noconfirm --needed neovim | tee -a "$log_file"
sudo pacman -S --noconfirm --needed fastfetch | tee -a "$log_file"
sudo pacman -S --noconfirm --needed eza | tee -a "$log_file"
sudo pacman -S --noconfirm --needed btop | tee -a "$log_file"
sudo pacman -S --noconfirm --needed rg | tee -a "$log_file"

######################################################################################


echo "##### INSTALL FLATPAK #####" | tee -a "$log_file"

fi="flatpak install -y"

yay -S --noconfirm --needed flatpak | tee -a "$log_file"

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo | tee -a "$log_file"


$fi com.brave.Browser | tee -a "$log_file"
$fi com.github.tchx84.Flatseal | tee -a "$log_file"
$fi io.github.flattool.Warehouse | tee -a "$log_file"
$fi org.dupot.easyflatpak | tee -a "$log_file"
$fi org.flameshot.Flameshot | tee -a "$log_file"
$fi org.geany.Geany | tee -a "$log_file"
$fi org.localsend.localsend_app | tee -a "$log_file"

######################################################################################

echo "##### COPY XFCE CONFIG #####" | tee -a "$log_file"

cp -v Pictures/* ~/Pictures/ | tee -a "$log_file"
cp -rfv xfce4 ~/.config/ | tee -a "$log_file"

