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
# TdcType HR-TDC: 5, LR-TDC: 6 (on Jun. 7, 2024)
param  AmQStrTdcSampler-0         msiTcpIp   192.168.2.160   TdcType    6 
param  AmQStrTdcSampler-1         msiTcpIp   192.168.2.161   TdcType    6 
param  AmQStrTdcSampler-2         msiTcpIp   192.168.2.162   TdcType    6 
param  AmQStrTdcSampler-3         msiTcpIp   192.168.2.163   TdcType    6 
param  AmQStrTdcSampler-4         msiTcpIp   192.168.2.164   TdcType    6 
param  AmQStrTdcSampler-5         msiTcpIp   192.168.2.165   TdcType    6 
param  AmQStrTdcSampler-6         msiTcpIp   192.168.2.166   TdcType    6 
param  AmQStrTdcSampler-7         msiTcpIp   192.168.2.167   TdcType    6 
param  AmQStrTdcSampler-8         msiTcpIp   192.168.2.168   TdcType    6
param  AmQStrTdcSampler-9         msiTcpIp   192.168.2.169   TdcType    5 



#param  AmQStrTdcSampler-3         msiTcpIp   192.168.10.16   TdcType     6

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
param Scaler-0    openmode append path /dev/null
param Scaler-1    openmode append path /dev/null
param Scaler-2    openmode append path /dev/null
param Scaler-3    openmode append path /dev/null
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
#
param DecSink-0  multipart true openmode append path /dev/null
param DecSink-1  multipart true openmode append path /dev/null
param DecSink-2  multipart true openmode append path /dev/null
param DecSink-3  multipart true openmode append path /dev/null
