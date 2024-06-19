#!/bin/sh

screen -dmS Filter

for i in `seq 16`
do
	echo $i
	screen -S Filter -X screen ./start_device.sh fltcoin
	sleep 0.1
done
