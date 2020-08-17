#!/bin/bash
# script by D3D_M4N
# this is a CIA themed hacking tool prototype
# this was designed for a termux/nethunter machine with the following packages
#   nmap   w3m   git

echo "Connecting to Secure Channel...";
sleep 5
clear
echo "Connection Established!";
echo "------------";
echo " ╔═╗  ╦  ╔═╗";
echo " ║    ║  ╠═╣";
echo " ╚═╝  ╩  ╩ ╩";
echo "---Mobile---";
echo "";
echo "Enter Password:";
read pass
if [ "$pass" = "123123qq" ]
then 
    echo Done
else
    exit
fi
echo "enter install engine";
echo " termux= apt / apt-get / pkg ";
echo " kali= apt / apt-get";
echo " ie: apt";
read ins
clear
echo "------------------------";
echo "----- ╔═╗  ╦  ╔═╗ ------";
echo "----  ║    ║  ╠═╣  -----";
echo "----- ╚═╝  ╩  ╩ ╩ ------";
echo "---------Mobile---------";
echo "here are your choices:";
echo " 1. Fake ID";
echo " 2. Ultra Scan an IP Address ";
echo " 3. Stealth an IP Address";
echo " 4. Install Tools Needed";
echo " 5. Info";
echo " 6. Vuln Scan";
read choice
if [ "$choice" = "1" ]
then 
    w3m https://www.fakenamegenerator.com/gen-male-us-us.php
fi
if [ "$choice" = "2" ]
then 
    echo Enter Target IP: && read $ip && nmap -T4 -A -v $ip
fi
if [ "$choice" = "3" ]
then 
    echo Enter Target IP: && read $ip && nmap -sS $ip
fi
if [ "$choice" = "4" ]
then 
    $ins install w3m
	$ins install nmap 
fi
if [ "$choice" = "5" ]
then 
    echo "This is a tool meant for termux kali emulator, or nethunter on an android phone";
fi
if [ "$choice" = "6" ]
then echo Enter Target IP: && read $ip && nmap -A --script=vuln $ip
    
fi










