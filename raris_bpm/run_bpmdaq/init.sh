#!/bin/sh
pkill daq-webctl
sleep 0.2
#
redis-server $HOME/nestDAQ/etc/redis.conf --loadmodule $HOME/nestDAQ/lib/redistimeseries.so
#RIHOST=0.0.0.0 redisinsight-linux64 &
#daq-webctl >& $NESTDAQ/log/daq-webctl.log &
$HOME/nestDAQ/bin/daq-webctl >& /dev/null &
