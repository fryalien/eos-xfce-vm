#!/bin/bash

mkdir -v ~/.config/fastfetch

curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/refs/heads/main/fastfetch/config-simple.jsonc \
-o ./config/fastfetch/config.jsonc

cp ./config/fastfetch/config.jsonc ~/.config/fastfetch/
