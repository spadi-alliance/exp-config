#!/bin/bash

server=redis://127.0.0.1:6379/2

# Function to set parameters in Redis
function param () {
  cmdstring="redis-cli -u $server hset parameters:$1 ${@:2}"
  echo $cmdstring
  eval $cmdstring
}

# Default config file name
config_file="run_config.txt"

# Function to display help message
function show_help() {
  echo "Usage: $0 [-h] [config_file]"
  echo
  echo "Options:"
  echo "  -h            Show this help message and exit."
  echo "  config_file   Specify a custom configuration file. Default is 'run_config.txt'."
}

# Parse command-line arguments
while getopts ":h" option; do
  case $option in
    h)
      show_help
      exit 0
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      show_help
      exit 1
      ;;
  esac
done

# Shift positional arguments if any options are present
shift $((OPTIND - 1))

# Config file handling
if [ $# -ge 1 ]; then
  config_file="$1"
fi

# Source the config file
source "$config_file"

# Flush Redis database
# Uncomment the line below to actually flush the database
redis-cli -u $server flushdb

# Sample IP and TdcTypes handling
ips=()
tdcs=()
while IFS= read -r line; do
  if [[ $line == SamplerIP=* ]]; then
    ip_and_tdc=${line#SamplerIP=}
    ip=$(echo $ip_and_tdc | cut -d',' -f1)
    tdc=$(echo $ip_and_tdc | cut -d',' -f2)
    ips+=("$ip")
    tdcs+=("$tdc")
  fi
done < "$config_file"

# Some consistency checks
# Check if the number of IP addresses matches SAMPLER_MAX
if [ ${#ips[@]} -ne $SAMPLER_MAX ]; then
  echo "Error: The number of specified IP addresses (${#ips[@]}) does not match SAMPLER_MAX ($SAMPLER_MAX)." >&2
  exit 1
fi

# Set parameters for samplers
for i in $(seq 0 $((SAMPLER_MAX - 1))); do
  param AmQStrTdcSampler-$i msiTcpIp ${ips[$i]} TdcType ${tdcs[$i]}
done

# Set parameters for STFBuilders
for i in $(seq 0 $((STFB_MAX - 1))); do
  param STFBuilder-$i max-hbf 4
done

# Set parameters for Scalers
for i in $(seq 0 $((SAMPLER_MAX - 1))); do
  if [ "$DEVNULL" = true ]; then
      param Scaler-$i openmode append path /dev/null
  else
      param Scaler-$i prefix exedir/$(printf "%02d" $i) ext .dat
  fi      
done

# Set parameters for TimeFrameBuilders
for i in $(seq 0 $((SAMPLER_MAX - 1))); do
  param TimeFrameBuilder-$i decimation-factor $decimation_factor
done

# Set parameters for FileSinks
for i in $(seq 0 $((SAMPLER_MAX - 1))); do
  if [ "$DEVNULL" = true ]; then
      param FileSink-$i multipart true openmode append path /dev/null
  else
      param FileSink-$i multipart true prefix data/$(printf "%02d" $i) ext .dat
  fi      
done

# Set parameters for ScrSinks
for i in $(seq 0 $((SCRSINK_MAX - 1))); do
  if [ "$DEVNULL" = true ]; then
      param ScrSink-$i multipart true openmode append path /dev/null
  else
      param ScrSink-$i multipart true prefix scdata/$(printf "%02d" $i) ext .dat
  fi      
done

# Set parameters for DecSinks
for i in $(seq 0 $((DECSINK_MAX - 1))); do
  if [ "$DEVNULL" = true ]; then
      param DecSink-$i multipart true openmode append path /dev/null
  else
      param DecSink-$i multipart true prefix dcmdata/$(printf "%02d" $i) ext .dat
  fi      
done

# Set parameters for TimeFrameSlicerByLogicTiming
param TimeFrameSlicerByLogicTiming time-offset-begin $time_offset_begin time-offset-end $time_offset_end

param LogicFilter trigger-signals "\"(0xc0a802a9  8 0) (0xc0a802a9 10 0) (0xc0a802aa 16 -12) (0xc0a802aa 17 -12) (0xc0a802aa 18 -12) (0xc0a802aa 19 -12) (0xc0a802aa 20 -12) (0xc0a802aa 21 -12) (0xc0a802aa 22 -12) (0xc0a802aa 23 -12) (0xc0a802aa 24 -12) (0xc0a802aa 25 -12) (0xc0a802aa 27 -12) (0xc0a802aa 28 -12)\""
param LogicFilter trigger-formula "\"(0 & 1) & (2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13)\""
param LogicFilter trigger-width "30"




###redis-cli -u $server hgetall parameters:LogicFilter
