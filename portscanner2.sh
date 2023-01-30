#!/bin/bash

network=$1
port=$2

for ((i=1;i<254;i++)); do
  host="$network.$i"
  timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host:$port"
done
