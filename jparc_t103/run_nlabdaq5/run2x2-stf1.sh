#!/bin/bash

NPRO=$1
echo $NPRO
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64

# 1. Sampler
tmux new-session -d -s sampler
for runID in {0..9}
do
    echo "start device Sampler ${runID}"
    #./start_device.sh.in AmQStrTdcSampler
    tmux new-window -d -n S${runID} -t sampler -- './start_device.sh AmQStrTdcSampler' #--host-ip 192.168.2.51
    sleep 0.1
done

tmux kill-window -t sampler:0
xterm -geometry 80x15+0+0 -T Sampler2 -e tmux a -t sampler &

# 2. STFB
tmux new-session -d -s stfb
for runID in {0..9}
do
    echo "start device SubTime Frame Builder ${runID}"
        tmux new-window -d -n STF${runID} -t stfb -- './start_device.sh STFBuilder' #--host-ip 192.168.2.51
    sleep 0.1
done

tmux kill-window -t stfb:0
xterm -geometry 80x15+500+0 -T SubTimeFrameBuilder -e tmux a -t stfb &
