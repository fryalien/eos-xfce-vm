#!/bin/bash

in="sudo pacman -S --noconfirm --needed"
aur="yay -S --noconfirm --needed"
rmp="sudo pacman -Rns --noconfirm"

echo "REMOVE FROM EOS"

$rmp firefox
$rmp firewalld
$rmp meld

echo "INSTALL EOS PACKAGES"

$in fish
$in flatpak
$in ufw gufw

$in jq
$in xfce4-panel-profiles
$in xfce4-xkb-plugin
$in xfce4-sensors-plugin
$in xfce4-eyes-plugin

$in bat
$in btop
$in dos2unix
$in eza
$in fastfetch
$in fd
$in ffmpeg
$in fish
$in fzf
$in git
$in gparted
$in gzip
$in imagemagick
$in kbackup
$in kcalc
$in micro
$in ncdu
$in neovim
$in p7zip
$in partitionmanager
$in rate-mirrors
$in ripgrep
$in rsync
$in tldr
$in tree
$in tmux
$in unace
$in unrar
$in unzip
$in yt-dlp
$in zoxide

$in wireshark-qt
sudo usermod -aG wireshark $USER

echo "AUR"
$aur ttf-ms-fonts
$aur sublime-text-4
