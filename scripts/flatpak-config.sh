#!/bin/bash

# Make flapak config dirf

mkdir -p ~/.var/app

# Copy apps configs.

unzip -v \
	  './flatpak-var-app/com.brave.Browser.zip' \
      './flatpak-var-app/org.flameshot.Flameshot.zip' \
      './flatpak-var-app/org.keepassxc.KeePassXC.zip' \
      './flatpak-var-app/org.geany.Geany.zip' \
      './flatpak-var-app/org.localsend.localsend_app.zip' \
      -d ~/.var/apps/
