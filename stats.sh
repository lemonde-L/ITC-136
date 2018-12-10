#!/bin/bash

diskused=$(df -h | grep '/dev/sda1' | awk '{print $5}')

memfree=$(free -mh | grep Mem: | awk'{print $7}')

connections=$(netstat | grep tcp)

users=$(who)

echo -en "This is a snapshot of your current system:
	\e[35m Disk Used: $diskused
	\e[36m Free Memory: $memfree
	\e[96m Open Internet Connections: $connection
	\e[31m Logged in Users: $user"
	