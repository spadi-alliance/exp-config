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
#            service              channel         options
#---------------------------------------------------------------------------

# Sampler 
endpoint     AmQStrTdcSampler     out            type push  method bind          portRangeMin 22001 portRangeMax 22999
endpoint     MikuTdcSampler       out            type push  method bind

# stf
endpoint     STFBuilder           in             type pull  method connect          portRangeMin 22001 portRangeMax 22999 
endpoint     STFBuilder           out            type push  method connect autoSubChannel true          portRangeMin 22001 portRangeMax 22999
endpoint     STFBuilder           dqm            type push  method connect          portRangeMin 22001 portRangeMax 22999

endpoint     MikuSTFBuilder       in             type pull  method connect          portRangeMin 22001 portRangeMax 22999 
endpoint     MikuSTFBuilder       out            type push  method connect          portRangeMin 22001 portRangeMax 22999

# DQM
endpoint     Scaler               in             type pull  method bind          portRangeMin 22001 portRangeMax 22999    
endpoint     Scaler               out            type push  method connect          portRangeMin 22001 portRangeMax 22999    

# tf
endpoint     TimeFrameBuilder     in             type pull  method bind          portRangeMin 22001 portRangeMax 22999
endpoint     TimeFrameBuilder     out            type push  method connect autoSubChannel true          portRangeMin 22001 portRangeMax 22999
endpoint     TimeFrameBuilder     decimator      type push  method connect          portRangeMin 22001 portRangeMax 22999

#flcoin
endpoint     fltcoin              in             type pull  method bind          portRangeMin 22001 portRangeMax 22999
endpoint     fltcoin              out            type push  method connect autoSubChannel true          portRangeMin 22001 portRangeMax 22999

# eb
endpoint     EventBuilder         in             type pull  method bind          portRangeMin 22001 portRangeMax 22999
endpoint     EventBuilder         out            type push  method connect          portRangeMin 22001 portRangeMax 22999

# Sink
endpoint     FileSink             in             type pull  method bind          portRangeMin 22001 portRangeMax 22999
endpoint     MikuSink             in             type pull  method bind          portRangeMin 22001 portRangeMax 22999
endpoint     DecSink              in             type pull  method bind          portRangeMin 22001 portRangeMax 22999
endpoint     ScrSink              in             type pull  method bind          portRangeMin 22001 portRangeMax 22999

echo "---------------------------------------------------------------------"
echo " config link"
echo "---------------------------------------------------------------------"
#---------------------------------------------------------------------------
#       service1          channel1        service2         channel2      
#---------------------------------------------------------------------------
link    AmQStrTdcSampler     out          STFBuilder        in
link    MikuTdcSampler       out          MikuSTFBuilder    in
link    STFBuilder           out          TimeFrameBuilder  in
link    STFBuilder           dqm          Scaler            in
link    MikuSTFBuilder       out          MikuSink          in
link    TimeFrameBuilder     out          fltcoin           in
link    TimeFrameBuilder     decimator    DecSink           in
link    fltcoin              out          EventBuilder      in
link    EventBuilder         out          FileSink          in
link    Scaler               out          ScrSink           in
