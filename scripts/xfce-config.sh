#!/bin/bash

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./xfce-config/xfce4 ~/.config/
cp -rfv ./xfce-config/Thunar ~/.config/
cp -rfv ./xfce-config/gtk-3.0 ~/.config/

echo "##### LOAD vm PANEL CONFIG #####"

xfce4-panel-profiles load ./xfce-config/vm-xfce-panel.tar.bz2
