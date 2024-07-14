#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64

# Sampler
tmux new-session -d -t sampler
for runID in {0..9}
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
for runID in {0..9}
do
    echo "start device SubTime Frame Builder ${runID}"
	tmux new-window -d -n STF${runID} -t stfb -- ./start_device.sh STFBuilder #--host-ip 192.168.2.100
    sleep 0.1
done

tmux kill-window -t stfb:0
xterm -geometry 80x15+500+0 -T SubTimeFrameBuilder -e tmux a -t stfb &
	
# TFB
tmux new-session -d -t tfb
for runID in {0..3}
do
    echo "start device TimeFrameBuilder ${runID}"
    tmux new-window -d -n TFB${runID} -t tfb -- ./start_device.sh TimeFrameBuilder #--host-ip 192.168.2.100
    sleep 0.2
done
tmux kill-window -t tfb:0
xterm -geometry 80x15+0+220 -T TimeFrameBuilder -e tmux a -t tfb &


# LogicFilter
tmux new-session -d -t flt
for runID in {0..4}
do
    echo "start device LogicFilter ${runID}"
    tmux new-window -d -n FLT${runID} -t flt -- ./start_device.sh LogicFilter
    sleep 0.2
done
tmux kill-window -t flt:0
xterm -geometry 80x15+500+220 -T LogicFilter -e tmux a -t flt &


# TFS
tmux new-session -d -t tfs
for runID in {0..4}
do
    echo "start device TimeFrameSlicer ${runID}"
    tmux new-window -d -n TFS${runID} -t tfs -- "./start_device.sh TimeFrameSlicerByLogicTiming "
    sleep 0.2
done
tmux kill-window -t tfs:0
xterm -geometry 80x15+0+440 -T TFS -e tmux a -t tfs &


# Second Filter
tmux new-session -d -t secflt
for runID in {0..5}
do
    echo "start device FilterTimeFrameSliceBySomething ${runID}"
    tmux new-window -d -n SECFLT${runID} -t secflt -- "./start_device.sh FilterTimeFrameSliceBySomething"
    sleep 0.2
done
tmux kill-window -t secflt:0
xterm -geometry 80x15+0+440 -T SECFLT -e tmux a -t secflt &

# Scaler
tmux new-session -d -t scaler

for runID in {0..9}
do
    echo "start device Scaler ${runID}"
        tmux new-window -d -n Scaler{runID} -t scaler -- ./start_device.sh Scaler #--host-ip 192.168.2.51
    sleep 0.2
done

# FileSink
tmux new-session -d -t sink

for runID in {0..0}
do
    echo "start device FileSink ${runID}"
	tmux new-window -d -n Sink${runID} -t sink -- ./start_device.sh FileSink #--host-ip 192.168.2.100
    sleep 0.2
done

tmux kill-window -t sink:0
xterm -geometry 80x15+500+440 -T Sink -e tmux a -t sink &

