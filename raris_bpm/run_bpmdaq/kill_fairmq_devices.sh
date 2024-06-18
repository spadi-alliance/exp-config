#!/bin/bash

pkill start_device.sh

#for fairmq_dev in AmQStrTdcSampler STFBuilder Scaler TimeFrameBuilder FileSink DecSink
#do
#    echo killing ${fairmq_dev}...
#    while true
#    do
#	ret=`ps aux | grep start_device | grep $fairmq_dev | grep -v grep | head -1`
#	ret=`echo $ret | awk '{print $2}'`
#	if [ ! "$ret" = ""  ]; then
#	    echo $ret
#	    echo kill -KILL $ret
#	    kill -KILL $ret
#	else
#	    break
#	fi
#    done
#done
