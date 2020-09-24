#!/bin/bash

# get the ip of my ethernet 
ifconfig | grep "broadcast" | cut -d " " -f 10 | cut -d "." -f 1,2,3 > mynetworkip.txt
#set a variable to get the ip value from mynetworkip.txt
MYIP=$(cat mynetworkip.txt)

#created a new file to have list of all IPs in the range
echo "" > $MYIP.txt

#for loop to ping all the ip in the MYIP range 
for ip in {1..255}
do 
	ping -b -c 1 $MYIP.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $MYIP.txt & 
done

cat $MYIP.txt # this will print out the IP's that has a response when it was pinged

#Perform nmap scan on 
nmap -iL $MYIP.txt
exit

