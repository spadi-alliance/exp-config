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
param  AmQStrTdcSampler-0         msiTcpIp   192.168.2.168   TdcType     2
param  AmQStrTdcSampler-1         msiTcpIp   192.168.2.161   TdcType     3
param  AmQStrTdcSampler-2         msiTcpIp   192.168.2.162   TdcType     3
param  AmQStrTdcSampler-3         msiTcpIp   192.168.2.163   TdcType     3
param  AmQStrTdcSampler-4         msiTcpIp   192.168.2.164   TdcType     3
param  AmQStrTdcSampler-5         msiTcpIp   192.168.2.165   TdcType     3
param  AmQStrTdcSampler-6         msiTcpIp   192.168.2.166   TdcType     3
param  AmQStrTdcSampler-7         msiTcpIp   192.168.2.167   TdcType     3
param  AmQStrTdcSampler-8         msiTcpIp   192.168.2.170   TdcType     3

#===============================================================================================
# MIKUMARI primary 160
#===============================================================================================
param  MikuTdcSampler-0           msiTcpIp   192.168.2.160   TdcType     4

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
# param  STFBuilder-9 max-hbf 5

#
param  MikuSTFBuilder-0 max-hbf 5
#

#
param TimeFrameBuilder-0 decimation-factor 80 decimation-offset 0 
param TimeFrameBuilder-1 decimation-factor 80 decimation-offset 10 
param TimeFrameBuilder-2 decimation-factor 80 decimation-offset 20 
param TimeFrameBuilder-3 decimation-factor 80 decimation-offset 30 
param TimeFrameBuilder-4 decimation-factor 80 decimation-offset 40 
param TimeFrameBuilder-5 decimation-factor 80 decimation-offset 50 
param TimeFrameBuilder-6 decimation-factor 80 decimation-offset 60 
param TimeFrameBuilder-7 decimation-factor 80 decimation-offset 70 
#

#
#EventBuilder-0 tref-id 0xc0a802a8 tref-ch 42
#EventBuilder-1 tref-id 0xc0a802a8 tref-ch 42
#EventBuilder-2 tref-id 0xc0a802a8 tref-ch 42
#EventBuilder-3 tref-id 0xc0a802a8 tref-ch 42
#EventBuilder-4 tref-id 0xc0a802a8 tref-ch 42
#EventBuilder-5 tref-id 0xc0a802a8 tref-ch 42
#EventBuilder-6 tref-id 0xc0a802a8 tref-ch 42
#EventBuilder-7 tref-id 0xc0a802a8 tref-ch 42
#

# Sink for TDC
param FileSink-0 multipart true  prefix e585/tdcdata/00 ext .dat n-threads 1
#param FileSink-1 multipart true  prefix e585/tdcdata/01 ext .dat n-threads 1
#param FileSink-2 multipart true  prefix e585/tdcdata/02 ext .dat n-threads 1
#param FileSink-3 multipart true  prefix e585/tdcdata/03 ext .dat n-threads 1
#param FileSink-4 multipart true  prefix e585/tdcdata/04 ext .dat n-threads 1
#param FileSink-5 multipart true  prefix e585/tdcdata/05 ext .dat n-threads 1
#param FileSink-6 multipart true  prefix e585/tdcdata/06 ext .dat n-threads 1
#param FileSink-7 multipart true  prefix e585/tdcdata/07 ext .dat n-threads 1
#param FileSink-0 multipart true openmode append path /dev/null
# param FileSink-9 multipart true  prefix 09 ext .dat 
#param FileSink-0 multipart true prefix 00
#param FileSink-1 multipart true prefix 01

# Sink for MIKUMARI TDC
param MikuSink-0 multipart true  prefix e585/mikudata/00 ext .dat

# Sink for Decimator
param DecSink-0 multipart true prefix e585/dcmdata/00 ext .dat
#aram DecSink-0 multipart true openmode append path /dev/null


# Sink for scaler
param ScrSink-0 multipart true  prefix e585/scdata/00 ext .dat
param ScrSink-1 multipart true  prefix e585/scdata/01 ext .dat
param ScrSink-2 multipart true  prefix e585/scdata/02 ext .dat
param ScrSink-3 multipart true  prefix e585/scdata/03 ext .dat
param ScrSink-4 multipart true  prefix e585/scdata/04 ext .dat
param ScrSink-5 multipart true  prefix e585/scdata/05 ext .dat
param ScrSink-6 multipart true  prefix e585/scdata/06 ext .dat
param ScrSink-7 multipart true  prefix e585/scdata/07 ext .dat
param ScrSink-8 multipart true  prefix e585/scdata/08 ext .dat

# param ScrSink-0 multipart true openmode append path /dev/null
# param ScrSink-1 multipart true openmode append path /dev/null
# param ScrSink-2 multipart true openmode append path /dev/null
# param ScrSink-3 multipart true openmode append path /dev/null
# param ScrSink-4 multipart true openmode append path /dev/null
# param ScrSink-5 multipart true openmode append path /dev/null
# param ScrSink-6 multipart true openmode append path /dev/null
# param ScrSink-7 multipart true openmode append path /dev/null
# param ScrSink-8 multipart true openmode append path /dev/null


# Scaler
param Scaler-0  prefix e585/exedir/00 ext .dat
param Scaler-1  prefix e585/exedir/01 ext .dat
param Scaler-2  prefix e585/exedir/02 ext .dat
param Scaler-3  prefix e585/exedir/03 ext .dat
param Scaler-4  prefix e585/exedir/04 ext .dat
param Scaler-5  prefix e585/exedir/05 ext .dat
param Scaler-6  prefix e585/exedir/06 ext .dat
param Scaler-7  prefix e585/exedir/07 ext .dat
param Scaler-8  prefix e585/exedir/08 ext .dat
