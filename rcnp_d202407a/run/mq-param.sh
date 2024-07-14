#!/bin/bash

redis_server=`cat redis-server.txt|sed 's/[[:blank:]]//g'`
server=redis://$redis_server/2

function param () {
  # "instance":"field" "value"
  #echo redis-cli -u $server set parameters:$1:$2 ${@:3}
  #redis-cli -u $server set parameters:$1:$2 ${@:3}
  echo redis-cli -u $server hset parameters:$1 ${@:2}
  redis-cli -u $server hset parameters:$1 ${@:2}
}

redis-cli -u $server  flushdb 

#===============================================================================================
#      isntance-id                field       value             field       value  
#===============================================================================================
#
# TdcType HR-TDC: 5, LR-TDC: 6 (on Jun. 7, 2024)
param  AmQStrTdcSampler-0         msiTcpIp   192.168.2.160   TdcType     6
param  AmQStrTdcSampler-1         msiTcpIp   192.168.2.161   TdcType     6
param  AmQStrTdcSampler-2         msiTcpIp   192.168.2.162   TdcType     6
param  AmQStrTdcSampler-3         msiTcpIp   192.168.2.163   TdcType     6
param  AmQStrTdcSampler-4         msiTcpIp   192.168.2.164   TdcType     6
param  AmQStrTdcSampler-5         msiTcpIp   192.168.2.165   TdcType     6
param  AmQStrTdcSampler-6         msiTcpIp   192.168.2.166   TdcType     6
param  AmQStrTdcSampler-7         msiTcpIp   192.168.2.167   TdcType     6
param  AmQStrTdcSampler-8         msiTcpIp   192.168.2.168   TdcType     6
param  AmQStrTdcSampler-9         msiTcpIp   192.168.2.169   TdcType     5
#
param  STFBuilder-0  max-hbf 4
param  STFBuilder-1  max-hbf 4
param  STFBuilder-2  max-hbf 4
param  STFBuilder-3  max-hbf 4
param  STFBuilder-4  max-hbf 4
param  STFBuilder-5  max-hbf 4
param  STFBuilder-6  max-hbf 4
param  STFBuilder-7  max-hbf 4
param  STFBuilder-8  max-hbf 4
param  STFBuilder-9  max-hbf 4
#
param Scaler-0
param Scaler-1
param Scaler-2
param Scaler-3
param Scaler-4
param Scaler-5
param Scaler-6
param Scaler-7
param Scaler-8
param Scaler-9
#
param TimeFrameBuilder-0  decimation-factor 1000
param TimeFrameBuilder-1  decimation-factor 1000
param TimeFrameBuilder-2  decimation-factor 1000
param TimeFrameBuilder-3  decimation-factor 1000
#
param FileSink-0  multipart true prefix  data/tdcdata/00 ext .dat
param FileSink-1  multipart true prefix  data/tdcdata/01 ext .dat
param FileSink-2  multipart true prefix  data/tdcdata/02 ext .dat
param FileSink-3  multipart true prefix  data/tdcdata/03 ext .dat
#
param ScrSink-0   multipart true  prefix data/scdata/00 ext .dat
param ScrSink-1   multipart true  prefix data/scdata/01 ext .dat
param ScrSink-2   multipart true  prefix data/scdata/02 ext .dat
param ScrSink-3   multipart true  prefix data/scdata/03 ext .dat
#
# Sink for Decimator         
param DecSink-0  multipart true prefix data/dcmdata/00 ext .dat
param DecSink-1  multipart true prefix data/dcmdata/01 ext .dat
param DecSink-2  multipart true prefix data/dcmdata/02 ext .dat
param DecSink-3  multipart true prefix data/dcmdata/03 ext .dat

param TimeFrameSlicerByLogicTiming-0 time-offset-begin -250 time-offset-end 250 
param TimeFrameSlicerByLogicTiming-1 time-offset-begin -250 time-offset-end 250 
param TimeFrameSlicerByLogicTiming-2 time-offset-begin -250 time-offset-end 250 
param TimeFrameSlicerByLogicTiming-3 time-offset-begin -250 time-offset-end 250 
param TimeFrameSlicerByLogicTiming-4 time-offset-begin -250 time-offset-end 250 

