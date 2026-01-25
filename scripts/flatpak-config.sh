#!/bin/bash

# Make flapak config dirf

mkdir -p ~/.var/app

# Copy apps configs.
unzip -o ../flatpak-var-app/com.brave.Browser.zip -d ~/.var/app
unzip -o ../flatpak-var-app/org.flameshot.Flameshot.zip -d ~/.var/app
unzip -o ../flatpak-var-app/org.geany.Geany.zip -d ~/.var/app
unzip -o ../flatpak-var-app/org.keepassxc.KeePassXC.zip -d ~/.var/app
unzip -o ../flatpak-var-app/org.localsend.localsend_app.zip -d ~/.var/app
unzip -o ../flatpak-var-app/org.qbittorrent.qBittorrent.zip -d ~/.var/app
