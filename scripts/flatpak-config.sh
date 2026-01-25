#!/bin/bash

# Make flapak config dirf

mkdir -p ~/.var/app

# Copy apps configs.

unzip -v \
	  './flatpak-var-apps/com.brave.Browser.zip' \
      './flatpak-var-apps/org.flameshot.Flameshot.zip' \
      './flatpak-var-apps/org.keepassxc.KeePassXC.zip' \
      './flatpak-var-apps/org.geany.Geany.zip' \
      './flatpak-var-apps/org.localsend.localsend_app.zip' \
      -d ~/.var/apps/
