#!/bin/sh
redis-server $NESTDAQ/etc/redis.conf --loadmodule $NESTDAQ/lib/redistimeseries.so
RIHOST=0.0.0.0 redisinsight-linux64 &
#daq-webctl >& $NESTDAQ/log/daq-webctl.log &
daq-webctl \
	--post-run '/home/spadi/e585/AmaneQ/amaneq_software-main/RcnpGr202303/script/start_daq.sh' \
	--pre-stop '/home/spadi/e585/AmaneQ/amaneq_software-main/RcnpGr202303/script/end_daq.sh' >& /dev/null &
