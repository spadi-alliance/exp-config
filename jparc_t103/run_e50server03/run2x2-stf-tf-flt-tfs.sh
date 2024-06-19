#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64


# TFB
tmux new-session -d -t tfb
for runID in {0..5}
do
    echo "start device TimeFrameBuilder ${runID}"
    tmux new-window -d -n TFB${runID} -t tfb -- ./start_device.sh TimeFrameBuilder #--host-ip 192.168.2.100
    sleep 0.2
done
tmux kill-window -t tfb:0
xterm -geometry 100x24+0+270 -T TimeFrameBuilder -e tmux a -t tfb &


# LogicFilter
tmux new-session -d -t flt
for runID in {0..11}
do
    echo "start device LogicFilter ${runID}"
    tmux new-window -d -n FLT${runID} -t flt -- ./start_device.sh LogicFilter
    sleep 0.2
done
tmux kill-window -t flt:0
xterm -geometry 120x40+900+0 -T LogicFilter -e tmux a -t flt &


# TFS
#tmux new-session -d -t tfs
#for runID in {0..9}
#do
#    echo "start device TimeFrameSlicer ${runID}"
#    tmux new-window -d -n TFS${runID} -t tfs -- ./start_device.sh TimeFrameSlicerByLogicTiming
#    sleep 0.2
#done
#tmux kill-window -t tfs:0
#xterm -geometry 80x24+900+400 -T TFS -e tmux a -t tfs &


# FileSink
tmux new-session -d -t sink
for runID in {0..1}
do
    echo "start device FileSink ${runID}"
	tmux new-window -d -n Sink${runID} -t sink -- ./start_device.sh FileSink #--host-ip 192.168.2.100
    sleep 0.2
done
tmux kill-window -t sink:0

#tmux kill-window -t sink:0
#xterm -geometry 80x15+620+270 -T Sink -e tmux a -t sink &

#ssh -X nestdaq@192.168.2.53 '(cd run ; ./run-sink.sh)'
#ssh -X nestdaq@e50server05 '(cd run ; ./run-decsink.sh)'
