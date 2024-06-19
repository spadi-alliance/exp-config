#!/bin/bash

for runID in {0..9}
do
    echo "start device Sampler ${runID}"
    xterm -iconic -geometry 100x20 -T Sampler -e ./start_device_nui.sh AmQStrTdcSampler &
    sleep 0.1
done

for runID in {0..9}
do
    echo "start device SubTime Frame Builder ${runID}"
    xterm -iconic -geometry 100x20 -T STFB -e ./start_device_nui.sh STFBuilder &
    sleep 0.1
done

#for runID in {0..3}
#do
#    echo "start device TimeFrameBuilder"
#    ./start_device.sh.in TimeFrameBuilder
#    sleep 0
#done

#for runID in {0..9}
#do
#    echo "start device FileSink"
#    ./start_device.sh.in FileSink
#    sleep 0.2
#done

#xterm -geometry 100x20+0+0 -T Sampler -e ./start_device_nui.sh AmQStrTdcSampler &
#xterm -geometry 100x20+0+300 -T Sampler -e ./start_device_nui.sh AmQStrTdcSampler &
#xterm -geometry 100x20+0+600 -T Sampler -e ./start_device_nui.sh AmQStrTdcSampler &
#xterm -geometry 100x20+600+0 -T STFB -e ./start_device_nui.sh STFBuilder &
#xterm -geometry 100x20+600+300 -T STFB -e ./start_device_nui.sh STFBuilder &
#xterm -geometry 100x20+600+600 -T STFB -e ./start_device_nui.sh STFBuilder &
xterm -geometry 100x30+1000+000 -T TFB  -e ./start_device_nui.sh TimeFrameBuilder &
xterm -geometry 100x30+1000+100 -T TFB  -e ./start_device_nui.sh TimeFrameBuilder &
xterm -geometry 100x30+1000+200 -T TFB  -e ./start_device_nui.sh TimeFrameBuilder &
#xterm -geometry 100x30+1000+300 -T TFB  -e ./start_device_nui.sh TimeFrameBuilder &

#xterm -geometry 100x50 -T FLTCoin -e ./start_device.sh fltcoin &
#xterm -geometry 100x40 -T tfdump -e ./start_device.sh tfdump &
