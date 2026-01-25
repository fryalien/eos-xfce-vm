#!/usr/bin/env bash

set -e

# INSTALL EVERYTHING AND MAKE A LOG OF IT

log="./install-$(date +%Y-%m-%d_%H:%M).log"

######################################################################################

echo "##### SCRIPT STARTED #####" | tee -a "$log"

date  | tee -a "$log"

######################################################################################

echo "##### START INSTALLATION #####"  | tee -a "$log"

./scripts/install-all.sh 2>&1  | tee -a "$log"

######################################################################################

echo "##### SCRIPT ENDED #####"  | tee -a "$log"

date  | tee -a "$log"
