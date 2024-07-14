#!/bin/sh
pkill daq-webctl
sleep 0.2
#redis-server $HOME/nestdaq/etc/redis.conf --loadmodule $HOME/nestdaq/lib/redistimeseries.so
#RIHOST=0.0.0.0 redisinsight-linux64 &
#daq-webctl >& $NESTDAQ/log/daq-webctl.log &

ssh -o "ForwardX11 no" -o "ForwardX11Trusted no" quser@vmeserver1 'redis-server $HOME/etc/redis.conf --loadmodule $HOME/repos/RedisTimeSeries/bin/redistimeseries.so'

redis_server=`cat redis-server.txt|sed 's/[[:blank:]]//g'`
server=tcp://$redis_server
cmd="$HOME/nestdaq/bin/daq-webctl --redis-uri $server --http-uri http://0.0.0.0:5962 >& /dev/null &"
echo $cmd
eval $cmd
