#!/bin/bash

server=redis://127.0.0.1:6379/2

function param () {
  # "instance":"field" "value"
  #echo redis-cli -u $server set parameters:$1:$2 ${@:3}
  #redis-cli -u $server set parameters:$1:$2 ${@:3}
  echo redis-cli -u $server hset parameters:$1 ${@:2}
  redis-cli -u $server hset parameters:$1 ${@:2}
}

function param1 () {
  #echo redis-cli -u $server hset parameters:$1 ${@:2}
	echo zero:$0
	echo one:$1
	echo two:$2
	echo three:$3
  echo redis-cli -u $server hset parameters:$1 $3
  redis-cli -u $server hset parameters:$1 $2 $3
}


#==============================================================================
#      isntance-id       field  value    field value   field          value
#==============================================================================
#param  Sampler-0         text   Hello    rate  2       max-iterations 0

param TimeFrameSlicerByLogicTiming  time-offset-begin  "-300"  time-offset-end "300"

echo '----'

redis-cli -u $server hgetall parameters:TimeFrameSlicerByLogicTiming
