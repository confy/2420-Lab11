#!/bin/bash
if [ ! -d "/home/vagrant/wttr"  ]
then
    mkdir "/home/vagrant/wttr"
fi
curr_dir=$(pwd)
echo "$curr_dir"
cp "$curr_dir/wttr" /usr/local/bin
cp "$curr_dir/wttr.service" /etc/systemd/system
cp "$curr_dir/wttr.timer" /etc/systemd/system
systemctl daemon-reload
systemctl enable wttr wttr.timer
systemctl start wttr wttr.timer
