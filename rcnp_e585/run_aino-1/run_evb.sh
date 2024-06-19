#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64

tmux new-session -d -t evb
for runID in {0..7}
do
    echo "start device Evb ${runID}"
    tmux new-window -d -n EVB${runID} -t evb -- ./start_device.sh EventBuilder
    sleep 0.1
done
tmux kill-window -t evb:0
xterm -geometry 80x15+0+0 -T Evb -e tmux a -t evb &

