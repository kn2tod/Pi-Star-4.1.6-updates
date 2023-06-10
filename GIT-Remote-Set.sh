#!/bin/bash
#
fs=$(grep "/dev/root" /proc/mounts | sed -n 's/.*\(r[ow]\).*/\1/p')
#rpi-rw
if [ "$fs" == "ro" ]; then
  sudo mount -o remount,rw / ; sudo mount -o remount,rw /boot
fi
#
pgit=${1:-andy}
pgit=${pgit/andy/AndyTaylorTweet}
pgit=${pgit/mark/kn2tod}
echo ${pgit}

# set to make repos updated
if ! grep -q 'safe' /root/.gitconfig > /dev/null 2<&1 ; then
    git config --global --add safe.directory /usr/local/sbin > /dev/null 2<&1
    git config --global --add safe.directory /usr/local/bin > /dev/null 2<&1
    git config --global --add safe.directory /var/www/dashboard > /dev/null 2<&1
fi

# check if 4.1.6 or greater?

# show-only option?  diff display  option?

# recycle tasks after switch?

echo === /usr/local/sbin: =================================================================
cd /usr/local/sbin
#sudo git remote show origin https://github.com/${pgit}/Pi-Star_Binaries_sbin.git
sudo git remote set-url origin https://github.com/${pgit}/Pi-Star_Binaries_sbin.git
#sudo git pull origin master
sudo git fetch origin
sudo git checkout master
sudo git reset --hard origin/master

echo === /usr/local/bin: ==================================================================
cd /usr/local/bin
#sudo git remote show origin https://github.com/${pgit}/Pi-Star_v4_Binaries_Bin.git
sudo git remote set-url origin https://github.com/${pgit}/Pi-Star_v4_Binaries_Bin.git
#sudo git pull origin master
sudo git fetch origin
sudo git checkout master
sudo git reset --hard origin/master

echo === /var/www/dashboard: ==============================================================
cd /var/www/dashboard
#sudo git remote show origin https://github.com/${pgit}/Pi-Star_DV_Dash.git
sudo git remote set-url origin https://github.com/${pgit}/Pi-Star_DV_Dash.git
sudo git stash push -m "save Pi-Star user config files" -- config/config.php config/ircddblocal.php config/language.php
#sudo git pull origin master
sudo git fetch origin
sudo git checkout master
sudo git reset --hard origin/master
sudo git stash pop

echo ======================================================================================
#rpi-ro
if [ "$fs" == "ro" ]; then
  sudo mount -o remount,ro / ; sudo mount -o remount,ro /boot
fi
