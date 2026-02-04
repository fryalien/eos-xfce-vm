#!/bin/bash

echo "Create config dir"
mkdir -v ~/.config/fish

echo "Download config file"
curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/main/fish/config.fish \
-o ~/.config/fish/config.fish

echo "Set fish shell default for my user"
sudo usermod -s /usr/bin/fish $USER
