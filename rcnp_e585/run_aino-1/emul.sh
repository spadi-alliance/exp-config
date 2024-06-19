#!/bin/bash

for runID in {0}
#for runID in {0}
do
    echo "start device Sampler ${runID}"
    ./start_device.sh.in Sampler 
    sleep 0.2
done

#for runID in {0}
for runID in {0}
do
    echo "start device SubTime Frame Builder ${runID}"
    ./start_device.sh.in STFBuilder 
    sleep 0.2
done

#for runID in {0}
#do
#    echo "start device TimeFrameBuilder"
#    ./start_device.sh.in TimeFrameBuilder
#    sleep 0.5
#done

for runID in {0}
do
    echo "start device FileSink"
    ./start_device.sh.in FileSink 
    sleep 0.2
done

#for runID in {0}
#do
#    echo "start device AmQStrTdcDqm"
#    ./start_device.sh.in AmQStrTdcDqm
#    sleep 0.2
#done
