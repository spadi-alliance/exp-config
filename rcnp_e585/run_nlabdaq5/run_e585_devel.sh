#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64

tmux new-session -d -t sampler
for runID in {0..8}
do
    echo "start device Sampler ${runID}"
    #./start_device.sh.in AmQStrTdcSampler
    tmux new-window -d -n S${runID} -t sampler -- ./start_device.sh AmQStrTdcSampler
    sleep 0.1
done

for runID in {0..0}
do
    echo "start device MikuSampler ${runID}"
    #./start_device.sh.in AmQStrTdcSampler
    tmux new-window -d -n S${runID} -t sampler -- ./start_device.sh AmQStrTdcSampler --service-name MikuTdcSampler
    sleep 0.1
done

tmux kill-window -t sampler:0
xterm -geometry 80x15+0+0 -T Sampler -e tmux a -t sampler &


tmux new-session -d -t stfb
for runID in {0..8}
do
    echo "start device SubTime Frame Builder ${runID}"
	tmux new-window -d -n STF${runID} -t stfb -- ./start_device.sh STFBuilder
    sleep 0.1
done

for runID in {0..0}
do
    echo "start device Miku SubTime Frame Builder ${runID}"
	tmux new-window -d -n STF${runID} -t stfb -- ./start_device.sh STFBuilder --service-name MikuSTFBuilder
    sleep 0.1
done
tmux kill-window -t stfb:0
xterm -geometry 80x15+500+0 -T SubTimeFrameBuilder -e tmux a -t stfb &


tmux new-session -d -t tfb
for runID in {0..3}
#for runID in {0}
do
    echo "start device TimeFrameBuilder ${runID}"
    tmux new-window -d -n STF${runID} -t tfb -- ./start_device.sh TimeFrameBuilder
    sleep 0.2
done
tmux kill-window -t tfb:0
xterm -geometry 100x24 -T TimeFrameBuilder -e tmux a -t tfb &

tmux new-session -d -t flt
for runID in {0..9}
do
    echo "start device Filter ${runID}"
    tmux new-window -d -n FLT${runID} -t flt -- ./start_device.sh fltcoin
    sleep 0.1
done
tmux kill-window -t flt:0
xterm -geometry 120x40 -T Flt -e tmux a -t flt &

tmux new-session -d -t evb
for runID in {0..7}
do
    echo "start device Evb ${runID}"
#    tmux new-window -d -n EVB${runID} -t evb -- ./start_device.sh EventBuilder
    tmux new-window -d -n EVB${runID} -t evb -- ./start_device.sh EventBuilder --tref-id 0xc0a802a8 --tref-ch 42
    sleep 0.1
done
tmux kill-window -t evb:0
xterm -geometry 80x15+800+0 -T Evb -e tmux a -t evb &

tmux new-session -d -t scaler
for runID in {0..8}
do
    echo "start device Scaler ${runID}"
	tmux new-window -d -n Scaler${runID} -t scaler -- ./start_device.sh Scaler
    sleep 0.2
done
	
tmux kill-window -t scaler:0
xterm -geometry 80x15+500+270 -T Scaler -e tmux a -t scaler &

ssh getdaq02 '(cd run ; ./run_e585_sink_devel.sh)'
