#!/bin/bash

#host=127.0.0.1
#port=6379
#db=0
server=redis://127.0.0.1:6379/0

function endpoint () {
  # Usage: 
  #   config_endpoint "service" "channel" "parameters"
  
  echo redis-cli -u $server hset daq_service:topology:endpoint:$1:$2 ${@:3}  
  redis-cli -u $server hset daq_service:topology:endpoint:$1:$2 ${@:3}  
}

function link () {
  # config_link "service1" "channel" "service2" "channel" "parameters"
  
  echo redis-cli -u $server set daq_service:topology:link:$1:$2,$3:$4 non
  redis-cli -u $server set daq_service:topology:link:$1:$2,$3:$4 none
}


echo "---------------------------------------------------------------------"
echo " config endpoint (channel/socket)"
echo "---------------------------------------------------------------------"
#---------------------------------------------------------------------------
#            service        channel         options
#---------------------------------------------------------------------------

# Sampler 
endpoint     Sampler        out            type push  method bind      portRangeMin 22001 portRangeMax 22999   rateLogging 5 

# STF
endpoint     STFBuilder     in             type pull method connect    portRangeMin 22001 portRangeMax 22999   rateLogging 5 
endpoint     STFBuilder     out            type push method connect    portRangeMin 22001 portRangeMax 22999   rateLogging 5 

# Sink
endpoint     FileSink       in             type pull  method bind      portRangeMin 22001 portRangeMax 22999   rateLogging 5 


echo "---------------------------------------------------------------------"
echo " config link"
echo "---------------------------------------------------------------------"
#---------------------------------------------------------------------------
#       service1         channel1        service2         channel2      
#---------------------------------------------------------------------------
link    Sampler          out            STFBuilder  in
link    STFBuilder       out            FileSink    in
