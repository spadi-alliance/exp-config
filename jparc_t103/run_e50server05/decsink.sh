#!/bin/bash 

tmux new-session -d -t sink

for runID in {0..1}
do
    echo "start device FileSink ${runID}"
        tmux new-window -d -n Sink${runID} -t sink -- ./start_device.sh FileSink --service-name DecSink #--host-ip 192.168.2.52
    sleep 0.2
done
tmux kill-window -t sink:0
xterm -geometry 80x15+800+270 -T Sink -e tmux a -t sink &
