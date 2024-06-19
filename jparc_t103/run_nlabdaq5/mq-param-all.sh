#!/bin/bash

server=redis://127.0.0.1:6379/2

function param () {
  # "instance":"field" "value"
  #echo redis-cli -u $server set parameters:$1:$2 ${@:3}
  #redis-cli -u $server set parameters:$1:$2 ${@:3}
  echo redis-cli -u $server hset parameters:$1 ${@:2}
  redis-cli -u $server hset parameters:$1 ${@:2}
}

redis-cli -u $server  flushdb 

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
# Mikuma
param  AmQStrTdcSampler-17        msiTcpIp   192.168.2.160   TdcType     6
param  AmQStrTdcSampler-18        msiTcpIp   192.168.2.171   TdcType     6
param  AmQStrTdcSampler-19        msiTcpIp   192.168.2.172   TdcType     6
param  AmQStrTdcSampler-20        msiTcpIp   192.168.2.180   TdcType     6
#
# Cirasame
param  AmQStrTdcSampler-21        msiTcpIp   192.168.2.101   TdcType     6
param  AmQStrTdcSampler-22        msiTcpIp   192.168.2.102   TdcType     6
param  AmQStrTdcSampler-23        msiTcpIp   192.168.2.103   TdcType     6
param  AmQStrTdcSampler-24        msiTcpIp   192.168.2.104   TdcType     6
param  AmQStrTdcSampler-25        msiTcpIp   192.168.2.105   TdcType     6
param  AmQStrTdcSampler-26        msiTcpIp   192.168.2.106   TdcType     6
param  AmQStrTdcSampler-27        msiTcpIp   192.168.2.107   TdcType     6
param  AmQStrTdcSampler-28        msiTcpIp   192.168.2.108   TdcType     6
param  AmQStrTdcSampler-29        msiTcpIp   192.168.2.109   TdcType     6
param  AmQStrTdcSampler-30        msiTcpIp   192.168.2.110   TdcType     6
param  AmQStrTdcSampler-31        msiTcpIp   192.168.2.111   TdcType     6
param  AmQStrTdcSampler-32        msiTcpIp   192.168.2.112   TdcType     6
param  AmQStrTdcSampler-33        msiTcpIp   192.168.2.113   TdcType     6
param  AmQStrTdcSampler-34        msiTcpIp   192.168.2.114   TdcType     6
param  AmQStrTdcSampler-35        msiTcpIp   192.168.2.115   TdcType     6
param  AmQStrTdcSampler-36        msiTcpIp   192.168.2.116   TdcType     6
param  AmQStrTdcSampler-37        msiTcpIp   192.168.2.117   TdcType     6
param  AmQStrTdcSampler-38        msiTcpIp   192.168.2.118   TdcType     6

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
param Scaler-0    prefix exedir/00 ext .dat
param Scaler-1    prefix exedir/01 ext .dat
param Scaler-2    prefix exedir/02 ext .dat
param Scaler-3    prefix exedir/03 ext .dat
param Scaler-4    prefix exedir/04 ext .dat
param Scaler-5    prefix exedir/05 ext .dat
param Scaler-6    prefix exedir/06 ext .dat
param Scaler-7    prefix exedir/07 ext .dat
param Scaler-8    prefix exedir/08 ext .dat
param Scaler-9    prefix exedir/09 ext .dat
param Scaler-10   prefix exedir/10 ext .dat
param Scaler-11   prefix exedir/11 ext .dat
param Scaler-12   prefix exedir/12 ext .dat
param Scaler-13   prefix exedir/13 ext .dat
param Scaler-14   prefix exedir/14 ext .dat
param Scaler-15   prefix exedir/15 ext .dat
param Scaler-16   prefix exedir/16 ext .dat
param Scaler-17   prefix exedir/17 ext .dat
param Scaler-18   prefix exedir/18 ext .dat
param Scaler-19   prefix exedir/19 ext .dat
param Scaler-20   prefix exedir/20 ext .dat
param Scaler-21   prefix exedir/21 ext .dat
param Scaler-22   prefix exedir/22 ext .dat
param Scaler-23   prefix exedir/23 ext .dat
param Scaler-24   prefix exedir/24 ext .dat
param Scaler-25   prefix exedir/25 ext .dat
param Scaler-26   prefix exedir/26 ext .dat
param Scaler-27   prefix exedir/27 ext .dat
param Scaler-28   prefix exedir/28 ext .dat
param Scaler-29   prefix exedir/29 ext .dat
param Scaler-30   prefix exedir/30 ext .dat
param Scaler-31   prefix exedir/31 ext .dat
param Scaler-32   prefix exedir/32 ext .dat
param Scaler-33   prefix exedir/33 ext .dat
param Scaler-34   prefix exedir/34 ext .dat
param Scaler-35   prefix exedir/35 ext .dat
param Scaler-36   prefix exedir/36 ext .dat
param Scaler-37   prefix exedir/37 ext .dat
param Scaler-38   prefix exedir/38 ext .dat
#
param TimeFrameBuilder-0  decimation-factor 100
param TimeFrameBuilder-1  decimation-factor 100
param TimeFrameBuilder-2  decimation-factor 100
param TimeFrameBuilder-3  decimation-factor 100
param TimeFrameBuilder-4  decimation-factor 100
param TimeFrameBuilder-5  decimation-factor 100
param TimeFrameBuilder-6  decimation-factor 100
param TimeFrameBuilder-7  decimation-factor 100
param TimeFrameBuilder-8  decimation-factor 100
param TimeFrameBuilder-9  decimation-factor 100
param TimeFrameBuilder-10 decimation-factor 100
param TimeFrameBuilder-11 decimation-factor 100
param TimeFrameBuilder-12 decimation-factor 100
param TimeFrameBuilder-13 decimation-factor 100
param TimeFrameBuilder-14 decimation-factor 100
param TimeFrameBuilder-15 decimation-factor 100
param TimeFrameBuilder-16 decimation-factor 100
param TimeFrameBuilder-17 decimation-factor 100
param TimeFrameBuilder-18 decimation-factor 100
param TimeFrameBuilder-19 decimation-factor 100
param TimeFrameBuilder-20 decimation-factor 100
param TimeFrameBuilder-21 decimation-factor 100
param TimeFrameBuilder-22 decimation-factor 100
param TimeFrameBuilder-23 decimation-factor 100
param TimeFrameBuilder-24 decimation-factor 100
param TimeFrameBuilder-25 decimation-factor 100
param TimeFrameBuilder-26 decimation-factor 100
param TimeFrameBuilder-27 decimation-factor 100
param TimeFrameBuilder-28 decimation-factor 100
param TimeFrameBuilder-29 decimation-factor 100
param TimeFrameBuilder-30 decimation-factor 100
param TimeFrameBuilder-31 decimation-factor 100
param TimeFrameBuilder-32 decimation-factor 100
param TimeFrameBuilder-33 decimation-factor 100
param TimeFrameBuilder-34 decimation-factor 100
param TimeFrameBuilder-35 decimation-factor 100
param TimeFrameBuilder-36 decimation-factor 100
param TimeFrameBuilder-37 decimation-factor 100
param TimeFrameBuilder-38 decimation-factor 100

param FileSink-0  multipart true prefix  data/00 ext .dat
param FileSink-1  multipart true prefix  data/01 ext .dat
param FileSink-2  multipart true prefix  data/02 ext .dat
param FileSink-3  multipart true prefix  data/03 ext .dat
param FileSink-4  multipart true prefix  data/04 ext .dat
param FileSink-5  multipart true prefix  data/05 ext .dat
param FileSink-6  multipart true prefix  data/06 ext .dat
param FileSink-7  multipart true prefix  data/07 ext .dat
param FileSink-8  multipart true prefix  data/08 ext .dat
param FileSink-9  multipart true prefix  data/09 ext .dat
param FileSink-10 multipart true prefix  data/10 ext .dat
param FileSink-11 multipart true prefix  data/11 ext .dat
param FileSink-12 multipart true prefix  data/12 ext .dat
param FileSink-13 multipart true prefix  data/13 ext .dat
param FileSink-14 multipart true prefix  data/14 ext .dat
param FileSink-15 multipart true prefix  data/15 ext .dat
param FileSink-16 multipart true prefix  data/16 ext .dat
param FileSink-17 multipart true prefix  data/17 ext .dat
param FileSink-18 multipart true prefix  data/18 ext .dat
param FileSink-19 multipart true prefix  data/19 ext .dat
param FileSink-20 multipart true prefix  data/20 ext .dat
param FileSink-21 multipart true prefix  data/21 ext .dat
param FileSink-22 multipart true prefix  data/22 ext .dat
param FileSink-23 multipart true prefix  data/23 ext .dat
param FileSink-24 multipart true prefix  data/24 ext .dat
param FileSink-25 multipart true prefix  data/25 ext .dat
param FileSink-26 multipart true prefix  data/26 ext .dat
param FileSink-27 multipart true prefix  data/27 ext .dat
param FileSink-28 multipart true prefix  data/28 ext .dat
param FileSink-29 multipart true prefix  data/29 ext .dat
param FileSink-30 multipart true prefix  data/30 ext .dat
param FileSink-31 multipart true prefix  data/31 ext .dat
param FileSink-32 multipart true prefix  data/32 ext .dat
param FileSink-33 multipart true prefix  data/33 ext .dat
param FileSink-34 multipart true prefix  data/34 ext .dat
param FileSink-35 multipart true prefix  data/35 ext .dat
param FileSink-36 multipart true prefix  data/36 ext .dat
param FileSink-37 multipart true prefix  data/37 ext .dat
param FileSink-38 multipart true prefix  data/38 ext .dat
#
param ScrSink-0   multipart true  prefix scdata/00 ext .dat
param ScrSink-1   multipart true  prefix scdata/01 ext .dat
param ScrSink-2   multipart true  prefix scdata/02 ext .dat
param ScrSink-3   multipart true  prefix scdata/03 ext .dat
param ScrSink-4   multipart true  prefix scdata/04 ext .dat
param ScrSink-5   multipart true  prefix scdata/05 ext .dat
param ScrSink-6   multipart true  prefix scdata/06 ext .dat
param ScrSink-7   multipart true  prefix scdata/07 ext .dat
param ScrSink-8   multipart true  prefix scdata/08 ext .dat
param ScrSink-9   multipart true  prefix scdata/09 ext .dat
param ScrSink-10  multipart true  prefix scdata/10 ext .dat
param ScrSink-11  multipart true  prefix scdata/11 ext .dat
param ScrSink-12  multipart true  prefix scdata/12 ext .dat
param ScrSink-13  multipart true  prefix scdata/13 ext .dat
param ScrSink-14  multipart true  prefix scdata/14 ext .dat
param ScrSink-15  multipart true  prefix scdata/15 ext .dat
param ScrSink-16  multipart true  prefix scdata/16 ext .dat
param ScrSink-17  multipart true  prefix scdata/17 ext .dat
param ScrSink-18  multipart true  prefix scdata/18 ext .dat
param ScrSink-19  multipart true  prefix scdata/19 ext .dat
param ScrSink-20  multipart true  prefix scdata/20 ext .dat
param ScrSink-21  multipart true  prefix scdata/21 ext .dat
param ScrSink-22  multipart true  prefix scdata/22 ext .dat
param ScrSink-23  multipart true  prefix scdata/23 ext .dat
param ScrSink-24  multipart true  prefix scdata/24 ext .dat
param ScrSink-25  multipart true  prefix scdata/25 ext .dat
param ScrSink-26  multipart true  prefix scdata/26 ext .dat
param ScrSink-27  multipart true  prefix scdata/27 ext .dat
param ScrSink-28  multipart true  prefix scdata/28 ext .dat
param ScrSink-29  multipart true  prefix scdata/29 ext .dat
param ScrSink-30  multipart true  prefix scdata/30 ext .dat
param ScrSink-31  multipart true  prefix scdata/31 ext .dat
param ScrSink-32  multipart true  prefix scdata/32 ext .dat
param ScrSink-33  multipart true  prefix scdata/33 ext .dat
param ScrSink-34  multipart true  prefix scdata/34 ext .dat
param ScrSink-35  multipart true  prefix scdata/35 ext .dat
param ScrSink-36  multipart true  prefix scdata/36 ext .dat
param ScrSink-37  multipart true  prefix scdata/37 ext .dat
param ScrSink-38  multipart true  prefix scdata/38 ext .dat
#
# Sink for Decimator                                                                                                       
param DecSink-0  multipart true prefix dcmdata/00 ext .dat
#param DecSink-0  multipart true openmode append path /dev/null                                                              
param DecSink-1  multipart true prefix dcmdata/01 ext .dat
param DecSink-2  multipart true prefix dcmdata/02 ext .dat
param DecSink-3  multipart true prefix dcmdata/03 ext .dat
param DecSink-4  multipart true prefix dcmdata/04 ext .dat
param DecSink-5  multipart true prefix dcmdata/05 ext .dat
param DecSink-6  multipart true prefix dcmdata/06 ext .dat
param DecSink-7  multipart true prefix dcmdata/07 ext .dat
param DecSink-8  multipart true prefix dcmdata/08 ext .dat
param DecSink-9  multipart true prefix dcmdata/09 ext .dat
param DecSink-10 multipart true prefix dcmdata/10 ext .dat
param DecSink-11 multipart true prefix dcmdata/11 ext .dat
param DecSink-12 multipart true prefix dcmdata/12 ext .dat
param DecSink-13 multipart true prefix dcmdata/13 ext .dat
param DecSink-14 multipart true prefix dcmdata/14 ext .dat
param DecSink-15 multipart true prefix dcmdata/15 ext .dat
param DecSink-16 multipart true prefix dcmdata/16 ext .dat
param DecSink-17 multipart true prefix dcmdata/17 ext .dat
param DecSink-18 multipart true prefix dcmdata/18 ext .dat
param DecSink-19 multipart true prefix dcmdata/19 ext .dat
param DecSink-20 multipart true prefix dcmdata/20 ext .dat
param DecSink-21 multipart true prefix dcmdata/21 ext .dat
param DecSink-22 multipart true prefix dcmdata/22 ext .dat
param DecSink-23 multipart true prefix dcmdata/23 ext .dat
param DecSink-24 multipart true prefix dcmdata/24 ext .dat
param DecSink-25 multipart true prefix dcmdata/25 ext .dat
param DecSink-26 multipart true prefix dcmdata/26 ext .dat
param DecSink-27 multipart true prefix dcmdata/27 ext .dat
param DecSink-28 multipart true prefix dcmdata/28 ext .dat
param DecSink-29 multipart true prefix dcmdata/29 ext .dat
param DecSink-30 multipart true prefix dcmdata/30 ext .dat
param DecSink-31 multipart true prefix dcmdata/31 ext .dat
param DecSink-32 multipart true prefix dcmdata/32 ext .dat
param DecSink-33 multipart true prefix dcmdata/33 ext .dat
param DecSink-34 multipart true prefix dcmdata/34 ext .dat
param DecSink-35 multipart true prefix dcmdata/35 ext .dat
param DecSink-36 multipart true prefix dcmdata/36 ext .dat
param DecSink-37 multipart true prefix dcmdata/37 ext .dat
param DecSink-38 multipart true prefix dcmdata/38 ext .dat

# TFS time window
#param TimeFrameSlicerByLogicTiming  time-offset-begin  "-300"  time-offset-end "300"
#param TimeFrameSlicerByLogicTiming  time-offset-begin  "-500"  time-offset-end "500"
#param TimeFrameSlicerByLogicTiming  time-offset-begin  "-50"  time-offset-end "200"
#param TimeFrameSlicerByLogicTiming  time-offset-begin  "-100"  time-offset-end "200"
param TimeFrameSlicerByLogicTiming  time-offset-begin  "-250"  time-offset-end "250"
