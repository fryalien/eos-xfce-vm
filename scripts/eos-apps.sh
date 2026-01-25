#!/bin/bash

# REMOVE FROM EOS

sudo pacman -Rns --noconfirm firefox
sudo pacman -Rns --noconfirm firewalld
sudo pacman -Rns --noconfirm meld

in="sudo pacman -S --noconfirm --needed"
aur="yay -S --noconfirm --needed"
user="y"

# INSTALL PACKAGES

$in fish
$in flatpak

$in jq
$in xfce4-panel-profiles
$in xfce4-xkb-plugin

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
$in micro
$in ncdu
$in neovim
$in p7zip
$in partitionmanager
$in rate-mirrors
$in ripgrep
$in rsync
$in tldr
$in tmux
$in unace
$in unrar
$in unzip
$in yt-dlp
$in zoxide

$in wireshark-qt
sudo usermod -aG wireshark $user

# AUR
$aur ttf-ms-fonts
$aur sublime-text-4
