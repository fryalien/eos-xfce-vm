#!/bin/bash

# INSTALL EVERYTHING AND MAKE A LOG OF IT

log="./install-$(date +%Y-%m-%d_%H:%M).log"

./eos-xfce-install.sh  | tee -a "$log"
