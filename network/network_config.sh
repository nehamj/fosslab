#!/bin/bash
echo
echo "All currently available interfaces"
ifconfig -a
echo
echo "Temporarily configuring the IP Address..."
sudo ifconfig wlo1 192.168.2.150 netmask 255.255.252.0
echo
echo "Configuring a default gateway..."
sudo route add default gw 192.168.0.8 wlo1
echo
echo "Verifying default gateway configuration..."
route -n
