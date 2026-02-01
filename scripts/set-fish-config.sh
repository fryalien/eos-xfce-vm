#!/bin/bash

user="y" #CHANGE THIS IF YOU USE ANOTHER USE

echo "Create config dir"
mkdir -v ~/.config/fish

echo "Download config files"
curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/main/fish/config.fish \
-o ./config/fish/config.fish

echo "Copy config files to defaul dir"
cp ./config/fish/config.fish ~/.config/fish/

echo "Set fish shell default for my user"
sudo usermod -s /usr/bin/fish $user
