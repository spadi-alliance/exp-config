#!/bin/bash

redis_server=`cat redis-server.txt|sed 's/[[:blank:]]//g'`
server=redis://$redis_server/0

#function config_endpoint () {
function endpoint () {
  # Usage: 
  #   config_endpoint "service" "channel" "parameters"
  
  echo redis-cli -u $server hset daq_service:topology:endpoint:$1:$2 ${@:3}  
  redis-cli -u $server hset daq_service:topology:endpoint:$1:$2 ${@:3}  
}

#function config_link () {
function link () {
  # config_link "service1" "channel" "service2" "channel" "parameters"
  
  echo redis-cli -u $server set daq_service:topology:link:$1:$2,$3:$4 non
  redis-cli -u $server set daq_service:topology:link:$1:$2,$3:$4 none
}

echo "Clear DAQ service keys"
redis-cli -u $server keys 'daq_service:*' | xargs redis-cli  -u $server del

echo "---------------------------------------------------------------------"
echo " config endpoint (socket)"
echo "---------------------------------------------------------------------"
#------------------------------------------------------------------------------------
#            service                channel         options
#------------------------------------------------------------------------------------

# Sampler 
endpoint     AmQStrTdcSampler        out           type push  method bind 

# subtime frame builder
endpoint     STFBuilder              in            type pull method connect 
endpoint     STFBuilder              out           type push method connect    autoSubChannel true
#endpoint     STFBuilder              dqm           type push method bind

# Scaler      
#endpoint     Scaler                  in            type pull method connect

# TF
endpoint     TimeFrameBuilder        in            type pull  method bind
endpoint     TimeFrameBuilder        out           type push  method connect    autoSubChannel true
#endpoint     TimeFrameBuilder        decimator     type push  method connect

# Filter
endpoint     LogicFilter             in            type pull method bind
endpoint     LogicFilter             out	         type push method connect   autoSubChannel true
endpoint     LogicFilter             dqm	         type pub  method bind      enable-uds false portRangeMin 22000 portRangeMax 23000

# TFS
endpoint     TimeFrameSlicerByLogicTiming  in      type pull method bind autoSubChannel false enable-uds true
endpoint     TimeFrameSlicerByLogicTiming  out     type push method connect autoSubChannel true
endpoint     TimeFrameSlicerByLogicTiming  dqm     type pub  method bind enable-uds false portRangeMin 22000 portRangeMax 23000

# SecFlt
endpoint    FilterTimeFrameSliceBySomething in      type pull method bind       enable-uds true
endpoint    FilterTimeFrameSliceBySomething out     type push method connect    autoSubChannel true

# Sink
endpoint     FileSink                in            type pull  method bind


echo "---------------------------------------------------------------------"
echo " config link"
echo "---------------------------------------------------------------------"
#------------------------------------------------------------------------------------
#       service1                channel1              service2        channel2      
#------------------------------------------------------------------------------------

link    AmQStrTdcSampler                  out                 STFBuilder                       in
link    STFBuilder                        out                 TimeFrameBuilder                 in
link    STFBuilder                        dqm                  Scaler                          in
link    TimeFrameBuilder                  out                 LogicFilter                      in
#link    TimeFrameBuilder                 decimator            DecSink           in 
link    LogicFilter                       out                 TimeFrameSlicerByLogicTiming     in
link    TimeFrameSlicerByLogicTiming      out                 FilterTimeFrameSliceBySomething  in
link    FilterTimeFrameSliceBySomething   out                 FileSink                         in
#link    STFBuilder              dqm                  Scaler            in
