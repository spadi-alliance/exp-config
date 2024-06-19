#!/bin/sh
pkill daq-webctl
sleep 0.2
#
redis-server $NESTDAQ/etc/redis.conf --loadmodule $NESTDAQ/lib/redistimeseries.so
#RIHOST=0.0.0.0 redisinsight-linux64 &
#daq-webctl >& $NESTDAQ/log/daq-webctl.log &
daq-webctl >& /dev/null &
