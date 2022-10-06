#!/usr/bin/sudo /bin/bash 
echo $1
systemctl disable container-$1.service
rm /etc/systemd/system/container-$1.service
systemctl daemon-reload
