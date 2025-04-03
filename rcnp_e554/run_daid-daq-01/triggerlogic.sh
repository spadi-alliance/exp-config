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

function param1 () {
  #echo redis-cli -u $server hset parameters:$1 ${@:2}
	echo zero:$0
	echo one:$1
	echo two:$2
	echo three:$3
  echo redis-cli -u $server hset parameters:$1 $3
  redis-cli -u $server hset parameters:$1 $2 $3
}

# Accepted trigger: 192.168.2.102, ch0, delay 0 ns (0xc0a80266 0 0)
redis-cli -u $server hset parameters:LogicFilter trigger-signals "(0xc0a80267 0 0)"
redis-cli -u $server hset parameters:LogicFilter trigger-formula "( 0 )"

# SR-PPAC trigger: 192.168.2.102, ch3, delay 0 ns (0xc0a80266 3 0)
#redis-cli -u $server hset parameters:LogicFilter trigger-signals "(0xc0a80267 3 0)"
#redis-cli -u $server hset parameters:LogicFilter trigger-formula "( 0 )"

# trigger width unit: 4 ns
# trigger width "10" --> 40 ns
# trigger width "25" --> 100 ns
# trigger width "250" --> 1 us
redis-cli -u $server hset parameters:LogicFilter trigger-width "250"
echo '----'
redis-cli -u $server hgetall parameters:LogicFilter
