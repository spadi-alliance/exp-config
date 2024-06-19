#!/bin/bash

READ_SEM_BIN=$HOME/e50test_202404/feesoft/hul-common-lib/install/bin/read_sem

IP_LIST="
192.168.2.113
192.168.2.114
192.168.2.115
192.168.2.116
192.168.2.117
192.168.2.118
"

while true
do
    echo ""
    echo "########## Read SEM information ############"
    for ip in $IP_LIST
    do
	echo ${ip}
	ret=`${READ_SEM_BIN} ${ip}`
	sem_n_correction=` echo "$ret" | awk 'NR==1 {print $4}'`
	sem_watchdog=`     echo "$ret" | awk 'NR==4 {print $5}'`
	sem_uncorrectable=`echo "$ret" | awk 'NR==5 {print $5}'`
	#echo "$ret"
	#echo $sem_n_correction
	#echo $sem_watchdog
	#echo $sem_uncorrectable
	redis-cli -n 4 ts.add sem:n_correction:${ip}    '*' $sem_n_correction
	redis-cli -n 4 ts.add sem:watchdog:${ip}        '*' $sem_watchdog
	redis-cli -n 4 ts.add sem:n_uncorrectable:${ip} '*' $sem_uncorrectable
    done
    echo "Date:" `date`
    sleep 1
done
