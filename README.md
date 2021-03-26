# 2420-Lab11 - Hourly Weather service
This script will get an Hourly weather report from wttr.in and save it to /home/vagrant/wttr/weather-*date-time*.
It has been configured to run as a systemd service and is triggered using a systemd timer.
## Installation
Simply clone the repo and run the installation script as root:
*Make sure to read it first :)*

    git clone https://github.com/confy/2420-Lab11.git
    sudo ./install.sh
  The installation script will move the service and timer to ``/etc/systemd/system``, as well as start and enable the service to run on boot. It will also move the wttr script to ``/usr/local/bin`` so it can be run at any time by the user simply by running```wttr```
