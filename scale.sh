#!/bin/sh

echo How many gateways do you want to run (max 9)?

read gwnum

i=1

until [ $i -gt $gwnum ]
do
  echo Creating Gateway: $i
  MQTT_PORT=1500$i GW_NAME=XCGW-DOCK0$i docker-compose -p gateway$i up -d
  ((i=i+1))
done
