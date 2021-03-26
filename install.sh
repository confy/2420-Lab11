#!/bin/bash
if [ ! -d "/home/vagrant/wttr"  ]
then
    sudo -u vagrant mkdir "/home/vagrant/wttr"
fi
curr_dir=$(pwd)
cp "$curr_dir/wttr" /usr/local/bin
cp "$curr_dir/wttr.service" /etc/systemd/system
cp "$curr_dir/wttr.timer" /etc/systemd/system
systemctl daemon-reload
systemctl enable wttr wttr.timer
systemctl start wttr wttr.timer
