#!/bin/bash

# REMOVE FROM EOS

sudo pacman -Rns --noconfirm firefox
sudo pacman -Rns --noconfirm firewalld
sudo pacman -Rns --noconfirm meld

in="sudo pacman -S --noconfirm --needed"
aur="yay -S --noconfirm --needed"

# INSTALL PACKAGES

$in fish
$in flatpak

$in jq

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
$in ripgrep
$in rsync
$in tldr
$in tmux
$in unace
$in unrar
$in unzip
$in yt-dlp
$in zoxide

# AUR
$aur ttf-ms-fonts
$aur sublime-text-4

