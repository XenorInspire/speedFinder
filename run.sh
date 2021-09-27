#!/usr/bin/bash

# speedFinder : get all info about a domain name.

domain=$1
file="output.txt"
declare -a commands=('/usr/bin/whois -H' 'ping' 'theHarvester -l 10 -b all -d' './Dnsrr/dnsrr.sh -fb')
for command in "${commands[@]}"; do
    echo $command
    $command $domain > $file
done
