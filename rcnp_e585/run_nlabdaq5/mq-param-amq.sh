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
# RLTDC 161~167, 170  HRTDC 168, 169
#===============================================================================================
#      isntance-id                field       value             field       value  
param  AmQStrTdcSampler-0         msiTcpIp   192.168.2.168   TdcType     2
param  AmQStrTdcSampler-1         msiTcpIp   192.168.2.161   TdcType     3
param  AmQStrTdcSampler-2         msiTcpIp   192.168.2.162   TdcType     3
param  AmQStrTdcSampler-3         msiTcpIp   192.168.2.163   TdcType     3
param  AmQStrTdcSampler-4         msiTcpIp   192.168.2.164   TdcType     3
param  AmQStrTdcSampler-5         msiTcpIp   192.168.2.165   TdcType     3
param  AmQStrTdcSampler-6         msiTcpIp   192.168.2.166   TdcType     3
param  AmQStrTdcSampler-7         msiTcpIp   192.168.2.167   TdcType     3
param  AmQStrTdcSampler-8         msiTcpIp   192.168.2.170   TdcType     3
param  AmQStrTdcSampler-9         msiTcpIp   192.168.2.160   TdcType     3

#
param  STFBuilder-0 max-hbf 5
param  STFBuilder-1 max-hbf 5
param  STFBuilder-2 max-hbf 5
param  STFBuilder-3 max-hbf 5
param  STFBuilder-4 max-hbf 5
param  STFBuilder-5 max-hbf 5
param  STFBuilder-6 max-hbf 5
param  STFBuilder-7 max-hbf 5
param  STFBuilder-8 max-hbf 5
param  STFBuilder-9 max-hbf 5
# param  STFBuilder-9 max-hbf 5

#param Sink-0 multipart false
#param Sink-1 multipart false
#param Sink-2 multipart false
#param Sink-3 multipart false

#
#
param FileSink-0 multipart true  prefix 00 ext .dat 
param FileSink-1 multipart true  prefix 01 ext .dat 
param FileSink-2 multipart true  prefix 02 ext .dat 
param FileSink-3 multipart true  prefix 03 ext .dat 
param FileSink-4 multipart true  prefix 04 ext .dat 
param FileSink-5 multipart true  prefix 05 ext .dat 
param FileSink-6 multipart true  prefix 06 ext .dat 
param FileSink-7 multipart true  prefix 07 ext .dat 
param FileSink-8 multipart true  prefix 08 ext .dat
param FileSink-9 multipart true  prefix 09 ext .dat 
# param FileSink-9 multipart true  prefix 09 ext .dat 
#param FileSink-0 multipart true prefix 00
#param FileSink-1 multipart true prefix 01

# Sink for scaler
param ScrSink-0 multipart true  prefix scdata/00 ext .dat
param ScrSink-1 multipart true  prefix scdata/01 ext .dat
param ScrSink-2 multipart true  prefix scdata/02 ext .dat
param ScrSink-3 multipart true  prefix scdata/03 ext .dat
param ScrSink-4 multipart true  prefix scdata/04 ext .dat
param ScrSink-5 multipart true  prefix scdata/05 ext .dat
param ScrSink-6 multipart true  prefix scdata/06 ext .dat
param ScrSink-7 multipart true  prefix scdata/07 ext .dat
param ScrSink-8 multipart true  prefix scdata/08 ext .dat
param ScrSink-9 multipart true  prefix scdata/09 ext .dat 

# Scaler
param Scaler-0  source-type stf  prefix exedir/00 ext .dat
param Scaler-1  source-type stf  prefix exedir/01 ext .dat
param Scaler-2  source-type stf  prefix exedir/02 ext .dat
param Scaler-3  source-type stf  prefix exedir/03 ext .dat
param Scaler-4  source-type stf  prefix exedir/04 ext .dat
param Scaler-5  source-type stf  prefix exedir/05 ext .dat
param Scaler-6  source-type stf  prefix exedir/06 ext .dat
param Scaler-7  source-type stf  prefix exedir/07 ext .dat
param Scaler-8  source-type stf  prefix exedir/08 ext .dat
param Scaler-9  source-type stf  prefix exedir/09 ext .dat
#param Scaler-9  source-type stf  dqm-uri redis://127.0.0.1:6379 prefix exedir/00 ext .dat


