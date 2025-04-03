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

redis-cli -u $server flushdb

#===============================================================================================
#      isntance-id                field       value             field       value  
#===============================================================================================
#
# TdcType paring mode:               HR-TDC: 5, LR-TDC: 6 (on Jun.  7, 2024)
# TdcType leading and trailing mode: HR-TDC: 7, LR-TDC: 8 (on Feb. 23, 2025)
param  AmQStrTdcSampler-0         msiTcpIp   192.168.2.101   TdcType     6
param  AmQStrTdcSampler-1         msiTcpIp   192.168.2.102   TdcType     5
param  AmQStrTdcSampler-2         msiTcpIp   192.168.2.103   TdcType     7
param  AmQStrTdcSampler-3         msiTcpIp   192.168.2.104   TdcType     5
param  AmQStrTdcSampler-4         msiTcpIp   192.168.2.105   TdcType     5
param  AmQStrTdcSampler-5         msiTcpIp   192.168.2.106   TdcType     5
#
param  STFBuilder-0  max-hbf 4
param  STFBuilder-1  max-hbf 4
param  STFBuilder-2  max-hbf 4
param  STFBuilder-3  max-hbf 4
param  STFBuilder-4  max-hbf 4
param  STFBuilder-5  max-hbf 4
#
param TimeFrameBuilder-0  decimation-factor 1000
param TimeFrameBuilder-1  decimation-factor 1000
param TimeFrameBuilder-2  decimation-factor 1000
param TimeFrameBuilder-3  decimation-factor 1000
#
param FileSink-0  multipart true openmode append path /dev/null
param FileSink-1  multipart true openmode append path /dev/null
param FileSink-2  multipart true openmode append path /dev/null
param FileSink-3  multipart true openmode append path /dev/null
param FileSink-4  multipart true openmode append path /dev/null
param FileSink-5  multipart true openmode append path /dev/null
#
# Sink for Decimator         
param DecSink-0  multipart true openmode append path /dev/null
param DecSink-1  multipart true openmode append path /dev/null
param DecSink-2  multipart true openmode append path /dev/null
param DecSink-3  multipart true openmode append path /dev/null
param DecSink-4  multipart true openmode append path /dev/null
param DecSink-5  multipart true openmode append path /dev/null

param TimeFrameSlicerByLogicTiming-0 time-offset-begin -250 time-offset-end 250 
param TimeFrameSlicerByLogicTiming-1 time-offset-begin -250 time-offset-end 250 
param TimeFrameSlicerByLogicTiming-2 time-offset-begin -250 time-offset-end 250 
param TimeFrameSlicerByLogicTiming-3 time-offset-begin -250 time-offset-end 250 
param TimeFrameSlicerByLogicTiming-4 time-offset-begin -250 time-offset-end 250 
