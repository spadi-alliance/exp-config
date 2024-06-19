#!/bin/bash

READ_LRTDC_SCR_BIN=../feesoft/hul-common-lib/install/bin/read_scr
READ_HRTDC_SCR_BIN=../feesoft/amaneq-soft/install/StrHRTDC/bin/read_mzn_scr

while true
do
    state=`redis-cli -n 1 hgetall metrics:state`
    i=0
    while true
    do
	ret=`echo "$state" | grep -A1 "AmQStrTdcSampler-$i" | tail -1`
	echo $ret
	if [ "$ret" = "" ]; then
	    break
	fi
	if [ "$ret" = "RUNNING" ]; then
	    run_num=`redis-cli -n 0 get run_info:run_number`
	    run_num=`echo $run_num | awk '{printf ("%06d",$1)}'`
	    id=`echo $i | awk '{printf ("%02d",$1)}'`
	    ip=`redis-cli -n 2 hget parameters:AmQStrTdcSampler-$i msiTcpIp`
	    tdctype=`redis-cli -n 2 hget parameters:AmQStrTdcSampler-$i TdcType`
	    if [ "$tdctype" = "5" ]; then
		echo $READ_HRTDC_SCR_BIN ${ip} up   ./rbcpdata/run${run_num}_${id}_up.dat   append
		echo $READ_HRTDC_SCR_BIN ${ip} down ./rbcpdata/run${run_num}_${id}_down.dat append
		$READ_HRTDC_SCR_BIN ${ip} up   ./rbcpdata/run${run_num}_${id}_up.dat   append
		$READ_HRTDC_SCR_BIN ${ip} down ./rbcpdata/run${run_num}_${id}_down.dat append
	    else
		echo $READ_LRTDC_SCR_BIN ${ip} ./rbcpdata/run${run_num}_${id}.dat append
		$READ_LRTDC_SCR_BIN ${ip} ./rbcpdata/run${run_num}_${id}.dat append
	    fi
	fi
	i=$(($i+1))
    done
    echo "Date:" `date`
    sleep 1
done
