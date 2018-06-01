#!/bin/bash
set -e
NUM_CORE=$(nproc)
echo "starting aquaminer" | logger
for i in $(seq 1 "$NUM_CORE"); do
  echo launching worker $i
  /home/ubuntu/aquaminer-0.4-linux-amd64 -F "http://172.16.21.100:8543" -t 1 -r 1s 2>>"/home/ubuntu/log2.log" 1>>"/home/ubuntu/log1.log" &
done