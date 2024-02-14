#!/bin/bash
#Quick Nmap wrapper script to nmap a list of hosts.

if [ "$1" == "" ]
then
echo "No hostfile detected. please pass host file as argument.."

for ip in $(cat $1); do nmap -sC -sV -p- -v $ip; >> nmapresults.txt
done
fi