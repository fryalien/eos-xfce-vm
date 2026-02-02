#!/usr/bin/env bash
set -e

CONF="/etc/systemd/timesyncd.conf"

# Backup existing config
sudo cp "$CONF" "$CONF.bak.$(date +%F-%H%M%S)"

# Ensure [Time] section exists
grep -q "^\[Time\]" "$CONF" || echo "[Time]" | sudo tee -a "$CONF" > /dev/null

# Remove old NTP/FallbackNTP lines
sudo sed -i -e '/^[#[:space:]]*NTP=/d' -e '/^[#[:space:]]*FallbackNTP=/d' "$CONF"

# Insert new servers under [Time] (no empty lines)
sudo sed -i '/^\[Time\]/a\
NTP=0.de.pool.ntp.org 1.de.pool.ntp.org 2.de.pool.ntp.org 3.de.pool.ntp.org\
FallbackNTP=1.europe.pool.ntp.org 2.europe.pool.ntp.org' "$CONF"

# Restart time sync
sudo systemctl restart systemd-timesyncd

# Show current server
timedatectl timesync-status
