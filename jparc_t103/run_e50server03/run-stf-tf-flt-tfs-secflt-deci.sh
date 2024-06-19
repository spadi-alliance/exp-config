#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64

# Sampler
tmux new-session -d -t sampler
for runID in {0..38}
do
    echo "start device Sampler ${runID}"
    #./start_device.sh.in AmQStrTdcSampler
    tmux new-window -d -n S${runID} -t sampler -- ./start_device.sh AmQStrTdcSampler #--host-ip 192.168.2.100
    sleep 0.1
done

tmux kill-window -t sampler:0
xterm -geometry 80x15+0+0 -T Sampler -e tmux a -t sampler &

# STFB
tmux new-session -d -t stfb
for runID in {0..38}
do
    echo "start device SubTime Frame Builder ${runID}"
	tmux new-window -d -n STF${runID} -t stfb -- ./start_device.sh STFBuilder #--host-ip 192.168.2.100
    sleep 0.1
done
tmux kill-window -t stfb:0
xterm -geometry 80x15+500+0 -T SubTimeFrameBuilder -e tmux a -t stfb &
	
# TFB
tmux new-session -d -t tfb
for runID in {0..1}
do
    echo "start device TimeFrameBuilder ${runID}"
    tmux new-window -d -n TFB${runID} -t tfb -- ./start_device.sh TimeFrameBuilder #--host-ip 192.168.2.100
    sleep 0.2
done
tmux kill-window -t tfb:0
xterm -geometry 100x24+0+270 -T TimeFrameBuilder -e tmux a -t tfb &

# LogicFilter
tmux new-session -d -t flt
for runID in {0..3}
do
    echo "start device LogicFilter ${runID}"
    tmux new-window -d -n FLT${runID} -t flt -- ./start_device.sh LogicFilter
    sleep 0.2
done
tmux kill-window -t flt:0
xterm -geometry 120x40+900+0 -T LogicFilter -e tmux a -t flt &

# TFS
tmux new-session -d -t tfs
for runID in {0..7}
do
    echo "start device TimeFrameSlicer ${runID}"
    tmux new-window -d -n TFS${runID} -t tfs -- ./start_device.sh TimeFrameSlicerByLogicTiming
    sleep 0.2
done
tmux kill-window -t tfs:0
xterm -geometry 80x24+900+400 -T TFS -e tmux a -t tfs &

# 2ndLogicFilter
tmux new-session -d -t secflt
for runID in {0..4}
do
    echo "start device FilterTimeFrameSliceBySomething ${runID}"
    tmux new-window -d -n SecFLT${runID} -t secflt -- ./start_device.sh FilterTimeFrameSliceBySomething
    sleep 0.2
done
tmux kill-window -t secflt:0
xterm -geometry 120x30+600+400 -T FilterTimeFrameSliceBySomething -e tmux a -t secflt &


# FileSink
#tmux new-session -d -t sink
#
#for runID in {0..1}
#do
#    echo "start device FileSink ${runID}"
#	tmux new-window -d -n Sink${runID} -t sink -- ./start_device.sh FileSink #--host-ip 192.168.2.100
#    sleep 0.2
#done
#tmux kill-window -t sink:0
#xterm -geometry 80x15+620+270 -T Sink -e tmux a -t sink &

# DecSink
#./decsink.sh


ssh -X nestdaq@e50server05 '(cd run ; ./run-decsink.sh)'
ssh -X nestdaq@e50server05 '(cd run ; ./run-sink.sh)'
