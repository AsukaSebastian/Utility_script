#!/bin/bash
# a script to update and upgrade a debian based distro 
if (( $EUID != 0 )); then
    echo "You need to run script as root" 
    exit
fi
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y autoremove
