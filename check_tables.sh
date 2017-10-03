#!/bin/bash
while :
do
  clear;
  mysql -uroot  $1 -e  "SHOW TABLES; SELECT FOUND_ROWS();"
echo "Press Ctrl+C to exit"
sleep 0.5;
done

