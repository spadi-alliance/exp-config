#!/bin/sh
pkill daq-webctl
sleep 0.2
#
redis-server $HOME/nestdaq/etc/redis.conf --loadmodule $HOME/nestdaq/lib/redistimeseries.so
#RIHOST=0.0.0.0 redisinsight-linux64 &
#daq-webctl >& $NESTDAQ/log/daq-webctl.log &
$HOME/nestdaq/bin/daq-webctl >& /dev/null &
