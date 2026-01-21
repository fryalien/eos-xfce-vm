#!/bin/bash

in="sudo pacman -S --noconfirm --needed"

$in fish
$in flatpak

$in btop
$in eza
$in fastfetch
$in flameshot
$in fzf
$in micro
$in neovim
$in rg
$in ufw gufw
$in zoxide


yay -S --noconfirm --needed paru
