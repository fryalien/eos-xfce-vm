echo "#####  Disable screensaver #####"
xfconf-query -c xfce4-screensaver -p /saver/enabled -t bool -s false --create
xfconf-query -c xfce4-screensaver -p /saver/idle-activation/enabled -t bool -s false --create
xfconf-query -c xfce4-screensaver -p /saver/idle-activation/delay -t int  -s 0 --create

echo "#####  Disable locking #####"
xfconf-query -c xfce4-screensaver -p /lock/enabled -t bool -s false --create

echo "#####  Disable lock on suspend/hibernate #####"
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lock-screen-suspend-hibernate -t bool -s false --create

echo "##### SET PRESENTATION MODE ON #####"
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -t bool -s true --create

echo "#####  Disable system sleep on inactivity (AC) #####"
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/inactivity-on-ac -t uint -s 0 --create

echo "#####  Disable system sleep on inactivity (battery) #####"
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/inactivity-on-battery -t uint -s 0 --create

echo "##### No DPMS (display never shuts down) #####"
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-enabled -t bool -s false --create

echo "##### No lid sleep #####"
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lid-action-on-ac -t uint -s 0 --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lid-action-on-battery -t uint -s 0 --create
