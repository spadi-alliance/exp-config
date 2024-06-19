#!/bin/bash

for runID in {0..9}
do
    echo "start device AmQStrTdcSampler ${runID}"
    ./start_device.sh.in AmQStrTdcSampler
    sleep 0.2
done
#
for runID in {0..9}
do
    echo "start device SubTime Frame Builder ${runID}"
    ./start_device.sh.in STFBuilder
    sleep 0.2
done
#
#for runID in {0..3}
#do
#    echo "start device TimeFrameBuilder"
#    ./start_device.sh.in TimeFrameBuilder
#    sleep 1
#done
#
for runID in {0..9}
do
    echo "start device FileSink"
    ./start_device.sh.in FileSink
    sleep 0.2
done
