#!/usr/bin/sudo /bin/bash 
echo $1
podman generate systemd --restart-policy=on-failure -t 1 --name $1 >> /etc/systemd/system/container-$1.service
cat /etc/systemd/system/container-$1.service
systemctl enable container-$1.service
