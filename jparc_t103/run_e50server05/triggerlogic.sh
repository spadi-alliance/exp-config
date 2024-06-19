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

#redis-cli -u $server hset parameters:LogicFilter trigger-signals "(0xc0a802a9 0 0) (0xc0a802a9 1 0) (0xc0a802a9 2 0) (0xc0a802a9 3 0) (0xc0a802a9 4 0) (0xc0a802a9 5 0) (0xc0a802aa 32 0) (0xc0a802aa 33 0) (0xc0a802aa 34 0) (0xc0a802aa 35 0)"
#redis-cli -u $server hset parameters:LogicFilter trigger-formula "RPN 0 1 & 2 3 & | 4 5 & | 6 7 & 8 9 & | &"
#redis-cli -u $server hset parameters:LogicFilter trigger-formula "((0 & 1) | (2 & 3) | (4 & 5))  & ((6 & 7) | (8 & 9))"

#"(0xc0a802a9  8 0) (0xc0a802a9 10 0)
#"(0 & 1) & (2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13)"

redis-cli -u $server hset parameters:LogicFilter trigger-signals \
"(0xc0a802a9  8 0) (0xc0a802a9 10 0) \
 (0xc0a802aa 16 -12) (0xc0a802aa 17 -12) (0xc0a802aa 18 -12) (0xc0a802aa 19 -12) \
 (0xc0a802aa 20 -12) (0xc0a802aa 21 -12) (0xc0a802aa 22 -12) (0xc0a802aa 23 -12) \
 (0xc0a802aa 24 -12) (0xc0a802aa 25 -12) (0xc0a802aa 27 -12) (0xc0a802aa 28 -12)"

#redis-cli -u $server hset parameters:LogicFilter trigger-signals \
#"(0xc0a802a9  8  0) (0xc0a802a9 10  0) \
# (0xc0a802aa 16  0) (0xc0a802aa 17  0) (0xc0a802aa 18  0) (0xc0a802aa 19  0) \
# (0xc0a802aa 20  0) (0xc0a802aa 21  0) (0xc0a802aa 22  0) (0xc0a802aa 23  0) \
# (0xc0a802aa 24  0) (0xc0a802aa 25  0) (0xc0a802aa 27  0) (0xc0a802aa 28  0)"


redis-cli -u $server hset parameters:LogicFilter trigger-formula \
"(0 & 1) & (2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13)"

#redis-cli -u $server hset parameters:LogicFilter trigger-signals "(0xc0a802a9  8 0) (0xc0a802a9 10 0)"
#redis-cli -u $server hset parameters:LogicFilter trigger-formula "(0 & 1)"

redis-cli -u $server hset parameters:LogicFilter trigger-width "10"

echo '----'

redis-cli -u $server hgetall parameters:LogicFilter
