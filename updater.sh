#!/bin/bash
if (( $EUID != 0 )); then
    echo "You need to run script as root" 
    exit
fi
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get clean
apt-get -y autoremove
