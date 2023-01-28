#!/bin/bash

hostfile=$1
portfile=$2

rm -rf enabledports.txt
echo "A host and port scanning tool, developed by AbijahB"
echo "usage: ./portscanner.sh IP_LIST PORT_LIST"
echo "Warning rerunning this will delete past output files if not renamed"
echo "Results saved in enabledports.txt"
echo "IP : PORT"
echo "A host and port scanning tool, developed by AbijahB" >> enabledports.txt
echo "IP : PORT" >> enabledports.txt



for host in $(cat $hostfile); do
  for port in $(cat $portfile); do
    timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host:$port" >> enabledports.txt
    timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host:$port"
  done
done
