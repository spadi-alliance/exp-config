#!/bin/sh
pkill daq-webctl
sleep 0.2
redis-server $HOME/local/etc/redis.conf --loadmodule $HOME/local/lib/redistimeseries.so

redis_server=`cat redis-server.txt|sed 's/[[:blank:]]//g'`
server=tcp://$redis_server
cmd="$HOME/local/bin/daq-webctl --redis-uri $server  >& /dev/null &"
echo $cmd
eval $cmd
