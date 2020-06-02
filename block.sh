#!/bin/bash

URL_TOR_CHECK="https://check.torproject.org/cgi-bin/TorBulkExitList.py?ip="
HOSTS=$(curl -L -X GET $URL_TOR_CHECK)

for host in $HOSTS
do
   iptables -A INPUT -s $host -j DROP
done
