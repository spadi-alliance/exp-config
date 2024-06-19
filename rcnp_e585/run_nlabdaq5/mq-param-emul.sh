#!/bin/bash
server=redis://127.0.0.1:6379/2

function param () {
  # "instance":"field" "value"
  #echo redis-cli -u $server set parameters:$1:$2 ${@:3}
  #redis-cli -u $server set parameters:$1:$2 ${@:3}
  echo redis-cli -u $server hset parameters:$1 ${@:2}
  redis-cli -u $server hset parameters:$1 ${@:2}
}

#======================================================================================================================================
#      isntance-id    field  value    field     value            field   value     field         value  field   value  field   value
param  Sampler-0      text   Hello    msiTcpIp  192.168.2.168    TdcType   2       max-iterations 0     MaxHBF  256    sflag   1
param  Sampler-1      text   world    msiTcpIp  192.168.2.169    TdcType   3       max-iterations 0     MaxHBF  256    sflag   1     
param  Sampler-2      text   hoge     msiTcpIp  192.168.2.161    TdcType   1       max-iterations 0     MaxHBF  256    sflag   1     
param  Sampler-3      text   piyo     msiTcpIp  192.168.2.162    TdcType   1       max-iterations 0     MaxHBF  256    sflag   1    
param  Sampler-4      text   piyo     msiTcpIp  192.168.2.163    TdcType   1       max-iterations 0     MaxHBF  256    sflag   1     
param  Sampler-5      text   piyo     msiTcpIp  192.168.2.164    TdcType   1       max-iterations 0     MaxHBF  256    sflag   1     
param  Sampler-6      text   piyo     msiTcpIp  192.168.2.165    TdcType   1       max-iterations 0     MaxHBF  256    sflag   1     
param  Sampler-7      text   piyo     msiTcpIp  192.168.2.166    TdcType   1       max-iterations 0     MaxHBF  256    sflag   1
param  Sampler-8      text   piyo     msiTcpIp  192.168.2.167    TdcType   1       max-iterations 0     MaxHBF  256    sflag   1           
param  Sampler-9      text   piyo     msiTcpIp  192.168.2.170    TdcType   1       max-iterations 0     MaxHBF  256    sflag   1            

param  STFBuilder-0 max-hbf 7
param  STFBuilder-1 max-hbf 5
param  STFBuilder-2 max-hbf 4
param  STFBuilder-3 max-hbf 2
param  STFBuilder-4 max-hbf 2
param  STFBuilder-5 max-hbf 2
param  STFBuilder-6 max-hbf 2
param  STFBuilder-7 max-hbf 2
param  STFBuilder-8 max-hbf 2
param  STFBuilder-9 max-hbf 2

param  AmQStrTdcDqm-0 http http:5999 source-type stf
#param  AmQStrTdcDqm-0 http http:5999 source-type tfb

#param TimeFrameBuilder-0 num-source 1

#param Sink-0 multipart true
#param Sink-1 multipart true
#param Sink-2 multipart false
#param Sink-3 multipart false

param FileSink-0  multipart true  prefix emdata/00 ext .dat 
param FileSink-1  multipart true  prefix emdata/01 ext .dat 
param FileSink-2  multipart true  prefix emdata/02 ext .dat 
param FileSink-3  multipart true  prefix emdata/03 ext .dat 
param FileSink-4  multipart true  prefix emdata/04 ext .dat 
param FileSink-5  multipart true  prefix emdata/05 ext .dat 
param FileSink-6  multipart true  prefix emdata/06 ext .dat 
param FileSink-7  multipart true  prefix emdata/07 ext .dat 
param FileSink-8  multipart true  prefix emdata/08 ext .dat 
param FileSink-9  multipart true  prefix emdata/09 ext .dat 
