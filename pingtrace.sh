#!/bin/bash
# bash script to show when another node on the network pings yourdevice
if (( $EUID != 0 )); then
    echo "You need to run script as root" 
    exit
fi
tcpdump -i wlo1 icmp && icmp[icmptype]=icmp-echo -n ; echo "service is running"
