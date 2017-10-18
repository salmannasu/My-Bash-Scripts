#!/bin/bash
while :
do
  ifconfig wlan0 | grep RX
  sleep 1
  clear
done
