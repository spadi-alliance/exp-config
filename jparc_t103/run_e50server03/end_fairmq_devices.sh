#!/bin/bash

if [ "$1" == "" ]; then
    echo redis-cli 'PUBLISH' 'daqctl' '{"command": "change_state", "value": "END", "services": ["all"], "instances": ["all"] }'
    redis-cli 'PUBLISH' 'daqctl' '{"command": "change_state", "value": "END", "services": ["all"], "instances": ["all"] }'
else
    echo redis-cli 'PUBLISH' 'daqctl' '{"command": "change_state", "value": "END", "services": ["'$1'"], "instances": ["all"] }'
    redis-cli 'PUBLISH' 'daqctl' '{"command": "change_state", "value": "END", "services": ["'$1'"], "instances": ["all"] }'
fi

###killall -HUP start_device.sh
#
## nlabdaq5 : 192.168.2.20
#ssh spadi@192.168.2.20 "killall -HUP start_device.sh"
#
## e50server01: 192.168.2.55
#ssh nestdaq@192.168.2.55 "killall -HUP start_device.sh"
#
## e50server04: 192.168.2.52
## ssh 192.168.2.52 "kill start_device.sh"
#
## esyst-daq01: 192.168.2.54
#ssh nestdaq@192.168.2.54 "killall -HUP start_device.sh"
#
## e50server05: 192.168.2.53
#ssh nestdaq@192.168.2.53 "killall -HUP start_device.sh"

#for fairmq_dev in AmQStrTdcSampler STFBuilder Scaler TimeFrameBuilder FileSink DecSink FilterTimeFrameSliceBySomething LogicFilter TimeFrameSlicerByLogicTiming
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
#    while true
#    do
#	ret=`ssh nestdaq@e50server05.intra.j-parc.jp "ps aux | grep start_device | grep $fairmq_dev | grep -v grep | head -1"`
#	ret=`echo $ret | awk '{print $2}'`
#	if [ ! "$ret" = ""  ]; then
#	    echo "ssh nestdaq@e50server05.intra.j-parc.jp \"kill -KILL $ret\""
#	    ssh nestdaq@e50server05.intra.j-parc.jp "kill -KILL $ret"
#	else
#	    break
#	fi
#    done
#    while true
#    do
#	ret=`ssh nestdaq@esyst-daq01.intra.j-parc.jp "ps aux | grep start_device | grep $fairmq_dev | grep -v grep | head -1"`
#	ret=`echo $ret | awk '{print $2}'`
#	if [ ! "$ret" = ""  ]; then
#	    echo "ssh nestdaq@esyst-daq01.intra.j-parc.jp \"kill -KILL $ret\""
#	    ssh nestdaq@esyst-daq01.intra.j-parc.jp "kill -KILL $ret"
#	else
#	    break
#	fi
#    done
#done
