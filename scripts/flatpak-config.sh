#!/bin/bash

echo "Make flapak config dir"
mkdir -pv ~/.var/app

echo "Copy apps configs"
unzip -o ./flatpak-var-app/com.brave.Browser.zip -d ~/.var/app
unzip -o ./flatpak-var-app/org.flameshot.Flameshot.zip -d ~/.var/app
unzip -o ./flatpak-var-app/org.geany.Geany.zip -d ~/.var/app
unzip -o ./flatpak-var-app/org.localsend.localsend_app.zip -d ~/.var/app
