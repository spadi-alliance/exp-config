#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64

# 1. Sampler
tmux new-session -d -t sampler
for runID in {0..9}
do
    echo "start device Sampler ${runID}"
    #./start_device.sh.in AmQStrTdcSampler
    tmux new-window -d -n S${runID} -t sampler -- ./start_device.sh AmQStrTdcSampler #--host-ip 192.168.2.51
    sleep 0.1
done

tmux kill-window -t sampler:0
xterm -geometry 80x15+0+0 -T Sampler -e tmux a -t sampler &

# 2. STFB
tmux new-session -d -t stfb
for runID in {0..9}
do
    echo "start device SubTime Frame Builder ${runID}"
	tmux new-window -d -n STF${runID} -t stfb -- ./start_device.sh STFBuilder #--host-ip 192.168.2.51
    sleep 0.1
done

tmux kill-window -t stfb:0
xterm -geometry 80x15+500+0 -T SubTimeFrameBuilder -e tmux a -t stfb &
	
# 4. TFB
tmux new-session -d -t tfb
#for runID in {0..24}
for runID in {0..3}
#for runID in {0}
do
    echo "start device TimeFrameBuilder ${runID}"
    tmux new-window -d -n TFB${runID} -t tfb -- ./start_device.sh TimeFrameBuilder #--host-ip 192.168.2.51
    sleep 0.2
done
tmux kill-window -t tfb:0
xterm -geometry 80x15+0+270 -T TimeFrameBuilder -e tmux a -t tfb &

# 7. FileSink
tmux new-session -d -t sink

for runID in {0..0}
do
    echo "start device FileSink ${runID}"
	tmux new-window -d -n Sink${runID} -t sink -- ./start_device.sh FileSink #--host-ip 192.168.2.51
    sleep 0.2
done

tmux kill-window -t sink:0
xterm -geometry 80x15+500+270 -T Sink -e tmux a -t sink &

# 7. Scaler
#tmux new-session -d -t scaler
#
#for runID in {0..9}
#do
#    echo "start device Scaler ${runID}"
#	tmux new-window -d -n Scaler{runID} -t scaler -- ./start_device.sh Scaler #--host-ip 192.168.2.51
#    sleep 0.2
#done
#
#tmux kill-window -t scaler:0
#xterm -geometry 80x15+500+540 -T Scaler -e tmux a -t scaler &

#ssh -X nestdaq@getdaq02 '(cd run ; ./run_sink_devel.sh)'
