#!/bin/bash

# Set password from global, default to none
APP_PASSWORD="${APP_PASSWORD:-}"

if [ -z "${APP_PASSWORD}" ]; then
    echo "APP_PASSWORD variable is not set, this is insecure! Was this intentional?" | tee /var/log/ncast.log
fi

if [ -z "$(ls -A /data)" ]; then
   echo "Copying default files and linking fs" | tee /var/log/ncast.log
   cp -rf /root/.config/obs /data/obs
   ln -s /data/obs /root/.config/obs
fi

export QT_QPA_PLATFORMTHEME=qt5ct

# Set passwords
sed -i -e "s/ServerPassword=.*+/ServerPassword=${APP_PASSWORD}/g" "/root/.config/obs-studio/global.ini"
echo "${APP_PASSWORD}" >> /root/.xprapasswd

echo "Starting app..." | tee /var/log/ncast.log 2>&1
bash /root/x11-session.sh | tee /var/log/ncast.log & 2>&1
bash /root/xpra-session.sh | tee /var/log/ncast.log & 2>&1
