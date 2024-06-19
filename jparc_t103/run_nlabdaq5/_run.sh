#!/bin/bash
#
# NestDAQ run script
# Under development. 
# To be renamed eventually as run.sh (?)
#
# created on 31.5.2024

#
# e.g.
#./run_new.sh --no-sampler --stfb --tfb --no-logic-filter --tfs --no-scaler --scrsink --file-sink --decsink

# default configuration file
CONFIG_FILE="run_config.txt"

# Process command-line arguments to override defaults
while [[ "$#" -gt 0 ]]; do
    case $1 in
	--config) shift; CONFIG_FILE=$1 ;;
        --sampler) SAMPLER=true ;;
        --no-sampler) SAMPLER=false ;;
        --stfb) STFB=true ;;
        --no-stfb) STFB=false ;;
        --tfb) TFB=true ;;
        --no-tfb) TFB=false ;;
        --logic-filter) LOGIC_FILTER1=true ;;
        --logic-filter2) LOGIC_FILTER2=true ;;
        --no-logic-filter) LOGIC_FILTER=false ;;
        --no-logic-filter2) LOGIC_FILTER2=false ;;
        --tfs) TFS=true ;;
        --no-tfs) TFS=false ;;
        --scaler) SCALER=true ;;
        --no-scaler) SCALER=false ;;
        --scrsink) SCRSINK=true ;;
        --no-scrsink) SCRSINK=false ;;
        --file-sink) FILE_SINK=true ;;
        --no-file-sink) FILE_SINK=false ;;
        --decsink) DECSINK=true ;;
        --no-decsink) DECSINK=false ;;
        --hostname) shift; HOSTNAME=$1 ;;
        --username) shift; USERNAME=$1 ;;
        --sampler-max) shift; SAMPLER_MAX=$1 ;;
        --stfb-max) shift; STFB_MAX=$1 ;;
        --tfb-max) shift; TFB_MAX=$1 ;;
        --logic-filter-max) shift; LOGIC_FILTER1_MAX=$1 ;;
        --logic-filter2-max) shift; LOGIC_FILTER2_MAX=$1 ;;
        --tfs-max) shift; TFS_MAX=$1 ;;
        --scaler-max) shift; SCALER_MAX=$1 ;;
        --scrsink-max) shift; SCRSINK_MAX=$1 ;;
        --file-sink-max) shift; FILE_SINK_MAX=$1 ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

# Load configuration file
if [ -f "$CONFIG_FILE" ]; then
    source "$CONFIG_FILE"
else
    echo "Configuration file $CONFIG_FILE not found!"
    exit 1
fi

# Export library path
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:$HOME/local/lib64

# Function to start tmux session
start_tmux_session() {
    local session_name=$1
    local device_name=$2
    local device_name_short=$3
    local max_run=$4
    local additional_options=$5

    cmdstring="tmux new-session -d -t $session_name"
    echo $cmdstring
    eval $cmdstring
    for runID in $(seq 0 $((max_run - 1))); do
        echo "start device ${device_name} ${runID}"
        cmdstring="tmux new-window -d -n ${device_name_short}${runID} -t $session_name -- ./start_device.sh $device_name $additional_options"
	echo $cmdstring
        eval $cmdstring
        sleep 0.2
    done
    cmdstring="tmux kill-window -t ${session_name}:0"
    echo $cmdstring
    eval $cmdstring
    cmdstring="xterm -geometry 80x24 -T $session_name -e tmux a -t $session_name &"
    echo $cmdstring
    eval $cmdstring
}

# Start the selected devices based on the configuration
$SAMPLER && start_tmux_session "sampler" "AmQStrTdcSampler" "S" "$SAMPLER_MAX" ""
$STFB && start_tmux_session "stfb" "STFBuilder" "STF" "$STFB_MAX" ""
$TFB && start_tmux_session "tfb" "TimeFrameBuilder" "TFB" "$TFB_MAX" ""
$LOGIC_FILTER1 && start_tmux_session "flt" "LogicFilter" "FLT" "$LOGIC_FILTER1_MAX" ""
$LOGIC_FILTER2 && start_tmux_session "secflt" "FilterTimeFrameSliceBySomething" "SecFLT" "$LOGIC_FILTER2_MAX" ""
$TFS && start_tmux_session "tfs" "TimeFrameSlicerByLogicTiming" "TFS" "$TFS_MAX" ""
$SCALER && start_tmux_session "scaler" "Scaler" "Scaler" "$SCALER_MAX" ""
$SCRSINK && start_tmux_session "scrsink" "FileSink" "Sink" "$SCRSINK_MAX" "--service-name ScrSink"

#$FILE_SINK && start_tmux_session "sink" "FileSink" "$FILE_SINK_MAX" ""
$FILE_SINK && ssh -X $USERNAME@$HOSTNAME '(cd run ; ./run-sink.sh)'
$DECSINK && ssh -X $USERNAME@$HOSTNAME '(cd run ; ./run-decsink.sh)'

# Start the sink process
#cmdstring="ssh -X $USERNAME@$HOSTNAME '(cd run ; ./run-sink.sh)'"
#echo $cmdstring
#eval $cmdstring
