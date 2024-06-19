#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64

tmux new-session -d -t decsink
for runID in {0..3}
do
    echo "start device DecSink ${runID}"
    tmux new-window -d -n DecSink${runID} -t decsink -- ./start_device.sh FileSink --service-name DecSink --host-ip 192.168.2.53
    sleep 0.2
done

#for runID in {0..0}
#do
#    echo "start device DecSink ${runID}"
#    tmux new-window -d -n DecSink${runID} -t sink -- ./start_device.sh FileSink --service-name DecSink
    #tmux new-window -d -n STF${runID} -t sink -- ./start_device.sh tfdump
#    sleep 0.2
#done

#for runID in {0..9}
#do
#    echo "start device ScrSink ${runID}"
#    tmux new-window -d -n ScrSink${runID} -t sink -- ./start_device.sh FileSink --service-name ScrSink 
#    sleep 0.2
#done

tmux kill-window -t decsink:0
#xterm -geometry 80x15 -T Sink -e tmux a -t sink &

