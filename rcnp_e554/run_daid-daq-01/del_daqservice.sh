#!/bin/bash

redis_server=`cat redis-server.txt|sed 's/[[:blank:]]//g'`
server=redis://$redis_server

redis-cli -u $server/0 keys 'daq_service:*' | xargs redis-cli del
#redis-cli -u $server/0 flushall                           
#redis-cli -u $server/0 flushdb                          
#redis-cli -u $server/1 flushdb                          
redis-cli -u $server/2 flushdb
