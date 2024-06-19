#!/bin/bash

NPRO=$1
echo $NPRO
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64

# 1. Sampler
tmux new-session -d -s sampler2
for runID in {0..2}
do
    echo "start device Sampler ${runID}"
    #./start_device.sh.in AmQStrTdcSampler
    tmux new-window -d -n S${runID} -t sampler2 -- './start_device.sh AmQStrTdcSampler' #--host-ip 192.168.2.51
    sleep 0.1
done

tmux kill-window -t sampler2:0
xterm -geometry 80x15+0+0 -T Sampler2 -e tmux a -t sampler2 &

# 2. STFB
tmux new-session -d -s stfb2
for runID in {0..2}
do
    echo "start device SubTime Frame Builder ${runID}"
        tmux new-window -d -n STF${runID} -t stfb2 -- './start_device.sh STFBuilder' #--host-ip 192.168.2.51
    sleep 0.1
done

tmux kill-window -t stfb2:0
xterm -geometry 80x15+500+0 -T SubTimeFrameBuilder2 -e tmux a -t stfb2 &
