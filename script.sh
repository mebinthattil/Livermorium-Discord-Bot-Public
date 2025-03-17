#!/bin/bash

while true; do
  sudo pkill -f python3
  sudo python3 main.py
  echo "Last run --> $(date)"
  echo "$(date)" >> log.txt
  sleep 12000
done
