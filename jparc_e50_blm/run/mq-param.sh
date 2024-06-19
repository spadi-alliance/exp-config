#!/bin/bash

server=redis://127.0.0.1:6379/2

function param () {
  # "instance":"field" "value"
  #echo redis-cli -u $server set parameters:$1:$2 ${@:3}
  #redis-cli -u $server set parameters:$1:$2 ${@:3}
  echo redis-cli -u $server hset parameters:$1 ${@:2}
  redis-cli -u $server hset parameters:$1 ${@:2}
}

#===============================================================================================
# LRTDC 161~167, 170  HRTDC 168, 169
#===============================================================================================
#      isntance-id                field       value             field       value  
param  AmQStrTdcSampler-0         msiTcpIp   192.168.2.168   TdcType     5

#
param  STFBuilder-0 max-hbf 5

# Sink for TDC
param FileSink-0 multipart true  prefix data/tdcdata ext .dat n-threads 1

# Sink for scaler
param ScrSink-0 multipart true  prefix data/scdata ext .dat
# param ScrSink-0 multipart true openmode append path /dev/null

# Scaler
param Scaler-0  prefix data/exedir ext .dat
