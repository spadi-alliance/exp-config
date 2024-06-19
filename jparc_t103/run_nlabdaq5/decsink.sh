#!/bin/bash 

tmux new-session -d -t decsink

for runID in {0..1}
do
    echo "start device FileSink ${runID}"
        tmux new-window -d -n Sink${runID} -t decsink -- ./start_device.sh FileSink --service-name DecSink #--host-ip 192.168.2.52
    sleep 0.2
done
tmux kill-window -t decsink:0
xterm -geometry 80x15+800+270 -T DecSink -e tmux a -t sink &
