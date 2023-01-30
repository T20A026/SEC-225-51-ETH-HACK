#!/bin/bash

network=$1
server=$2

for ((i=1;i<254;i++)); do
  host="$network.$i"
  nslookup $host $server | grep "="
done
