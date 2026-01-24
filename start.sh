#!/bin/bash

# INSTALL EVERYTHING AND MAKE A LOG OF IT

log="./install-$(date +%Y-%m-%d_%H:%M).log"

######################################################################################

echo "##### SCRIPT STARTED #####"  | tee -a "$log"

date  | tee -a "$log"

######################################################################################

echo "##### START INSTALLATION #####"  | tee -a "$log"

./scripts/eos-xfce-install.sh  | tee -a "$log"

######################################################################################

echo "##### SCRIPT ENDED #####"  | tee -a "$log"

date  | tee -a "$log"
