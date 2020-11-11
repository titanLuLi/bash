#!/bin/sh
sudo killall vpnc
sleep 3s
echo starting SPOK...
sudo -i vpnc /etc/vpnc/KMD_Configuration_SPOK.conf
echo started SPOK!



