#!/bin/bash

server=redis://127.0.0.1:6379/2

function param () {
  # "instance":"field" "value"
  #echo redis-cli -u $server set parameters:$1:$2 ${@:3}
  #redis-cli -u $server set parameters:$1:$2 ${@:3}
  echo redis-cli -u $server hset parameters:$1 ${@:2}
  redis-cli -u $server hset parameters:$1 ${@:2}
}

redis-cli -u $server flushdb

#===============================================================================================
# RLTDC 161~167, 170  HRTDC 168, 169
#===============================================================================================
#      isntance-id                field       value             field       value  
#HR-TDC
param  AmQStrTdcSampler-0         msiTcpIp   192.168.2.169   TdcType     5
param  AmQStrTdcSampler-1         msiTcpIp   192.168.2.170   TdcType     5
#LR-TDC A
param  AmQStrTdcSampler-2         msiTcpIp   192.168.2.161   TdcType     6
param  AmQStrTdcSampler-3         msiTcpIp   192.168.2.162   TdcType     6
param  AmQStrTdcSampler-4         msiTcpIp   192.168.2.163   TdcType     6
param  AmQStrTdcSampler-5         msiTcpIp   192.168.2.164   TdcType     6
param  AmQStrTdcSampler-6         msiTcpIp   192.168.2.165   TdcType     6
param  AmQStrTdcSampler-7         msiTcpIp   192.168.2.166   TdcType     6
param  AmQStrTdcSampler-8         msiTcpIp   192.168.2.167   TdcType     6
param  AmQStrTdcSampler-9         msiTcpIp   192.168.2.168   TdcType     6
#LR-TDC B
param  AmQStrTdcSampler-10        msiTcpIp   192.168.2.173   TdcType     6
param  AmQStrTdcSampler-11        msiTcpIp   192.168.2.174   TdcType     6
param  AmQStrTdcSampler-12        msiTcpIp   192.168.2.175   TdcType     6
param  AmQStrTdcSampler-13        msiTcpIp   192.168.2.176   TdcType     6
param  AmQStrTdcSampler-14        msiTcpIp   192.168.2.177   TdcType     6
param  AmQStrTdcSampler-15        msiTcpIp   192.168.2.178   TdcType     6
param  AmQStrTdcSampler-16        msiTcpIp   192.168.2.179   TdcType     6
# Mikumar
param  AmQStrTdcSampler-17        msiTcpIp   192.168.2.160   TdcType     6
param  AmQStrTdcSampler-18        msiTcpIp   192.168.2.171   TdcType     6
param  AmQStrTdcSampler-19        msiTcpIp   192.168.2.172   TdcType     6
param  AmQStrTdcSampler-20        msiTcpIp   192.168.2.180   TdcType     6
#
# Cirasame
#param  AmQStrTdcSampler-21        msiTcpIp   192.168.2.101   TdcType     6
#param  AmQStrTdcSampler-22        msiTcpIp   192.168.2.102   TdcType     6
#param  AmQStrTdcSampler-23        msiTcpIp   192.168.2.103   TdcType     6
#param  AmQStrTdcSampler-24        msiTcpIp   192.168.2.104   TdcType     6
#param  AmQStrTdcSampler-25        msiTcpIp   192.168.2.105   TdcType     6
#param  AmQStrTdcSampler-26        msiTcpIp   192.168.2.106   TdcType     6
#param  AmQStrTdcSampler-27        msiTcpIp   192.168.2.107   TdcType     6
#param  AmQStrTdcSampler-28        msiTcpIp   192.168.2.108   TdcType     6
#param  AmQStrTdcSampler-29        msiTcpIp   192.168.2.109   TdcType     6
#param  AmQStrTdcSampler-30        msiTcpIp   192.168.2.110   TdcType     6
#param  AmQStrTdcSampler-31        msiTcpIp   192.168.2.111   TdcType     6
#param  AmQStrTdcSampler-32        msiTcpIp   192.168.2.112   TdcType     6
#param  AmQStrTdcSampler-33        msiTcpIp   192.168.2.113   TdcType     6
#param  AmQStrTdcSampler-34        msiTcpIp   192.168.2.114   TdcType     6
#param  AmQStrTdcSampler-35        msiTcpIp   192.168.2.115   TdcType     6
#param  AmQStrTdcSampler-36        msiTcpIp   192.168.2.116   TdcType     6
#param  AmQStrTdcSampler-37        msiTcpIp   192.168.2.117   TdcType     6
#param  AmQStrTdcSampler-38        msiTcpIp   192.168.2.118   TdcType     6
param  AmQStrTdcSampler-21        msiTcpIp   192.168.2.113   TdcType     6
param  AmQStrTdcSampler-22        msiTcpIp   192.168.2.114   TdcType     6
param  AmQStrTdcSampler-23        msiTcpIp   192.168.2.115   TdcType     6
param  AmQStrTdcSampler-24        msiTcpIp   192.168.2.116   TdcType     6
param  AmQStrTdcSampler-25        msiTcpIp   192.168.2.117   TdcType     6
param  AmQStrTdcSampler-26        msiTcpIp   192.168.2.118   TdcType     6



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
param  STFBuilder-10 max-hbf 4
param  STFBuilder-11 max-hbf 4
param  STFBuilder-12 max-hbf 4
param  STFBuilder-13 max-hbf 4
param  STFBuilder-14 max-hbf 4
param  STFBuilder-15 max-hbf 4
param  STFBuilder-16 max-hbf 4
param  STFBuilder-17 max-hbf 4
param  STFBuilder-18 max-hbf 4
param  STFBuilder-19 max-hbf 4
param  STFBuilder-20 max-hbf 4
param  STFBuilder-21 max-hbf 4
param  STFBuilder-22 max-hbf 4
param  STFBuilder-23 max-hbf 4
param  STFBuilder-24 max-hbf 4
param  STFBuilder-25 max-hbf 4
param  STFBuilder-26 max-hbf 4
param  STFBuilder-27 max-hbf 4
param  STFBuilder-28 max-hbf 4
param  STFBuilder-29 max-hbf 4
param  STFBuilder-30 max-hbf 4
param  STFBuilder-31 max-hbf 4
param  STFBuilder-32 max-hbf 4
param  STFBuilder-33 max-hbf 4
param  STFBuilder-34 max-hbf 4
param  STFBuilder-35 max-hbf 4
param  STFBuilder-36 max-hbf 4
param  STFBuilder-37 max-hbf 4
param  STFBuilder-38 max-hbf 4
#
param Scaler-0    openmode append path /dev/null
param Scaler-1    openmode append path /dev/null
param Scaler-2    openmode append path /dev/null
param Scaler-3    openmode append path /dev/null
param Scaler-4    openmode append path /dev/null
param Scaler-5    openmode append path /dev/null
param Scaler-6    openmode append path /dev/null
param Scaler-7    openmode append path /dev/null
param Scaler-8    openmode append path /dev/null
param Scaler-9    openmode append path /dev/null
param Scaler-10   openmode append path /dev/null
param Scaler-11   openmode append path /dev/null
param Scaler-12   openmode append path /dev/null
param Scaler-13   openmode append path /dev/null
param Scaler-14   openmode append path /dev/null
param Scaler-15   openmode append path /dev/null
param Scaler-16   openmode append path /dev/null
param Scaler-17   openmode append path /dev/null
param Scaler-18   openmode append path /dev/null
param Scaler-19   openmode append path /dev/null
param Scaler-20   openmode append path /dev/null
param Scaler-21   openmode append path /dev/null
param Scaler-22   openmode append path /dev/null
param Scaler-23   openmode append path /dev/null
param Scaler-24   openmode append path /dev/null
param Scaler-25   openmode append path /dev/null
param Scaler-26   openmode append path /dev/null
param Scaler-27   openmode append path /dev/null
param Scaler-28   openmode append path /dev/null
param Scaler-29   openmode append path /dev/null
param Scaler-30   openmode append path /dev/null
param Scaler-31   openmode append path /dev/null
param Scaler-32   openmode append path /dev/null
param Scaler-33   openmode append path /dev/null
param Scaler-34   openmode append path /dev/null
param Scaler-35   openmode append path /dev/null
param Scaler-36   openmode append path /dev/null
param Scaler-37   openmode append path /dev/null
param Scaler-38   openmode append path /dev/null
#
param TimeFrameBuilder-0  decimation-factor 1000
param TimeFrameBuilder-1  decimation-factor 1000
param TimeFrameBuilder-2  decimation-factor 1000
param TimeFrameBuilder-3  decimation-factor 1000
param TimeFrameBuilder-4  decimation-factor 1000
param TimeFrameBuilder-5  decimation-factor 1000
param TimeFrameBuilder-6  decimation-factor 1000
param TimeFrameBuilder-7  decimation-factor 1000
param TimeFrameBuilder-8  decimation-factor 1000
param TimeFrameBuilder-9  decimation-factor 1000
param TimeFrameBuilder-10 decimation-factor 1000
param TimeFrameBuilder-11 decimation-factor 1000
param TimeFrameBuilder-12 decimation-factor 1000
param TimeFrameBuilder-13 decimation-factor 1000
param TimeFrameBuilder-14 decimation-factor 1000
param TimeFrameBuilder-15 decimation-factor 1000
param TimeFrameBuilder-16 decimation-factor 1000
param TimeFrameBuilder-17 decimation-factor 1000
param TimeFrameBuilder-18 decimation-factor 1000
param TimeFrameBuilder-19 decimation-factor 1000
param TimeFrameBuilder-20 decimation-factor 1000
param TimeFrameBuilder-21 decimation-factor 1000
param TimeFrameBuilder-22 decimation-factor 1000
param TimeFrameBuilder-23 decimation-factor 1000
param TimeFrameBuilder-24 decimation-factor 1000
param TimeFrameBuilder-25 decimation-factor 1000
param TimeFrameBuilder-26 decimation-factor 1000
param TimeFrameBuilder-27 decimation-factor 1000
param TimeFrameBuilder-28 decimation-factor 1000
param TimeFrameBuilder-29 decimation-factor 1000
param TimeFrameBuilder-30 decimation-factor 1000
param TimeFrameBuilder-31 decimation-factor 1000
param TimeFrameBuilder-32 decimation-factor 1000
param TimeFrameBuilder-33 decimation-factor 1000
param TimeFrameBuilder-34 decimation-factor 1000
param TimeFrameBuilder-35 decimation-factor 1000
param TimeFrameBuilder-36 decimation-factor 1000
param TimeFrameBuilder-37 decimation-factor 1000
param TimeFrameBuilder-38 decimation-factor 1000
#
param FileSink-0  multipart true openmode append path /dev/null
param FileSink-1  multipart true openmode append path /dev/null
param FileSink-2  multipart true openmode append path /dev/null
param FileSink-3  multipart true openmode append path /dev/null
param FileSink-4  multipart true openmode append path /dev/null
param FileSink-5  multipart true openmode append path /dev/null
param FileSink-6  multipart true openmode append path /dev/null
param FileSink-7  multipart true openmode append path /dev/null
param FileSink-8  multipart true openmode append path /dev/null
param FileSink-9  multipart true openmode append path /dev/null
param FileSink-10 multipart true openmode append path /dev/null
param FileSink-11 multipart true openmode append path /dev/null
param FileSink-12 multipart true openmode append path /dev/null
param FileSink-13 multipart true openmode append path /dev/null
param FileSink-14 multipart true openmode append path /dev/null
param FileSink-15 multipart true openmode append path /dev/null
param FileSink-16 multipart true openmode append path /dev/null
param FileSink-17 multipart true openmode append path /dev/null
param FileSink-18 multipart true openmode append path /dev/null
param FileSink-19 multipart true openmode append path /dev/null
param FileSink-20 multipart true openmode append path /dev/null
param FileSink-21 multipart true openmode append path /dev/null
param FileSink-22 multipart true openmode append path /dev/null
param FileSink-23 multipart true openmode append path /dev/null
param FileSink-24 multipart true openmode append path /dev/null
param FileSink-25 multipart true openmode append path /dev/null
param FileSink-26 multipart true openmode append path /dev/null
param FileSink-27 multipart true openmode append path /dev/null
param FileSink-28 multipart true openmode append path /dev/null
param FileSink-29 multipart true openmode append path /dev/null
param FileSink-30 multipart true openmode append path /dev/null
param FileSink-31 multipart true openmode append path /dev/null
param FileSink-32 multipart true openmode append path /dev/null
param FileSink-33 multipart true openmode append path /dev/null
param FileSink-34 multipart true openmode append path /dev/null
param FileSink-35 multipart true openmode append path /dev/null
param FileSink-36 multipart true openmode append path /dev/null
param FileSink-37 multipart true openmode append path /dev/null
param FileSink-38 multipart true openmode append path /dev/null
#
param ScrSink-0   multipart true openmode append path /dev/null
param ScrSink-1   multipart true openmode append path /dev/null
param ScrSink-2   multipart true openmode append path /dev/null
param ScrSink-3   multipart true openmode append path /dev/null
param ScrSink-4   multipart true openmode append path /dev/null
param ScrSink-5   multipart true openmode append path /dev/null
param ScrSink-6   multipart true openmode append path /dev/null
param ScrSink-7   multipart true openmode append path /dev/null
param ScrSink-8   multipart true openmode append path /dev/null
param ScrSink-9   multipart true openmode append path /dev/null
param ScrSink-10  multipart true openmode append path /dev/null
param ScrSink-11  multipart true openmode append path /dev/null
param ScrSink-12  multipart true openmode append path /dev/null
param ScrSink-13  multipart true openmode append path /dev/null
param ScrSink-14  multipart true openmode append path /dev/null
param ScrSink-15  multipart true openmode append path /dev/null
param ScrSink-16  multipart true openmode append path /dev/null
param ScrSink-17  multipart true openmode append path /dev/null
param ScrSink-18  multipart true openmode append path /dev/null
param ScrSink-19  multipart true openmode append path /dev/null
param ScrSink-20  multipart true openmode append path /dev/null
param ScrSink-21  multipart true openmode append path /dev/null
param ScrSink-22  multipart true openmode append path /dev/null
param ScrSink-23  multipart true openmode append path /dev/null
param ScrSink-24  multipart true openmode append path /dev/null
param ScrSink-25  multipart true openmode append path /dev/null
param ScrSink-26  multipart true openmode append path /dev/null
param ScrSink-27  multipart true openmode append path /dev/null
param ScrSink-28  multipart true openmode append path /dev/null
param ScrSink-29  multipart true openmode append path /dev/null
param ScrSink-30  multipart true openmode append path /dev/null
param ScrSink-31  multipart true openmode append path /dev/null
param ScrSink-32  multipart true openmode append path /dev/null
param ScrSink-33  multipart true openmode append path /dev/null
param ScrSink-34  multipart true openmode append path /dev/null
param ScrSink-35  multipart true openmode append path /dev/null
param ScrSink-36  multipart true openmode append path /dev/null
param ScrSink-37  multipart true openmode append path /dev/null
param ScrSink-38  multipart true openmode append path /dev/null
#
# Sink for Decimator                                                                                                       
param DecSink-0  multipart true openmode append path /dev/null
param DecSink-1  multipart true openmode append path /dev/null
param DecSink-2  multipart true openmode append path /dev/null
param DecSink-3  multipart true openmode append path /dev/null
param DecSink-4  multipart true openmode append path /dev/null
param DecSink-5  multipart true openmode append path /dev/null
param DecSink-6  multipart true openmode append path /dev/null
param DecSink-7  multipart true openmode append path /dev/null
param DecSink-8  multipart true openmode append path /dev/null
param DecSink-9  multipart true openmode append path /dev/null
param DecSink-10 multipart true openmode append path /dev/null
param DecSink-11 multipart true openmode append path /dev/null
param DecSink-12 multipart true openmode append path /dev/null
param DecSink-13 multipart true openmode append path /dev/null
param DecSink-14 multipart true openmode append path /dev/null
param DecSink-15 multipart true openmode append path /dev/null
param DecSink-16 multipart true openmode append path /dev/null
param DecSink-17 multipart true openmode append path /dev/null
param DecSink-18 multipart true openmode append path /dev/null
param DecSink-19 multipart true openmode append path /dev/null
param DecSink-20 multipart true openmode append path /dev/null
param DecSink-21 multipart true openmode append path /dev/null
param DecSink-22 multipart true openmode append path /dev/null
param DecSink-23 multipart true openmode append path /dev/null
param DecSink-24 multipart true openmode append path /dev/null
param DecSink-25 multipart true openmode append path /dev/null
param DecSink-26 multipart true openmode append path /dev/null
param DecSink-27 multipart true openmode append path /dev/null
param DecSink-28 multipart true openmode append path /dev/null
param DecSink-29 multipart true openmode append path /dev/null
param DecSink-30 multipart true openmode append path /dev/null
param DecSink-31 multipart true openmode append path /dev/null
param DecSink-32 multipart true openmode append path /dev/null
param DecSink-33 multipart true openmode append path /dev/null
param DecSink-34 multipart true openmode append path /dev/null
param DecSink-35 multipart true openmode append path /dev/null
param DecSink-36 multipart true openmode append path /dev/null
param DecSink-37 multipart true openmode append path /dev/null
param DecSink-38 multipart true openmode append path /dev/null

#
# TFS Time window
param TimeFrameSlicerByLogicTiming  time-offset-begin  "-300"  time-offset-end "300"

param TimeFrameBuilder buffer-timeout "5000"
