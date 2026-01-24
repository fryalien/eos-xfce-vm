#!/bin/bash

# INSTALL EVERYTHING AND MAKE A LOG OF IT

log="./install-$(date +%Y-%m-%d_%H:%M).log"

######################################################################################

echo "##### SET SUDO 3 hrs #####"

./set-sudo-timeout.sh

######################################################################################

./eos-xfce-install.sh  | tee -a "$log"
