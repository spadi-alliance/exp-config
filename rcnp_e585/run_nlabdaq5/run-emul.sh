#!/bin/bash

for runID in {0..9}
do
    echo "start device Sampler ${runID}"
    ./start_device_nui.sh Sampler
    sleep 0.2
done

for runID in {0..9}
do
    echo "start device SubTime Frame Builder ${runID}"
    ./start_device_nui.sh STFBuilder
    sleep 0.2
done

for runID in {0}
do
    echo "start device TimeFrameBuilder"
    ./start_device_nui.sh TimeFrameBuilder
    sleep 0.2
done

for runID in {0}
do
    echo "start device FileSink"
    ./start_device_nui.sh FileSink
    sleep 0.2
done
