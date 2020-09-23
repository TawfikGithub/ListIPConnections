#!/bin/bash
ip_ping()
{
 ping -c 1 $1 > /dev/null
  [ $? -eq 0 ] && echo Device with IP: $i is up.
}

for i in 10.0.2.{1..255}
do 
ip_ping $1 & disown
done
