#!/bin/bash
echo "#########################################################"
echo "# This script: $0"
echo "# Script start time: " `date +"%Y-%m-%d %H:%M:%S"`
echo "#########################################################"

echo "Get redis server information..."
redis_server="-u redis://localhost:6379"
if [ -f ../redis-server.txt ];
then
    redis_server=`cat ../redis-server.txt | sed 's/[[:blank:]]//g'`
    redis_server="-u redis://${redis_server}"
fi
echo "redis server option: ${redis_server}"
echo ""

run_number=`redis-cli ${redis_server} -n 0 get run_info:run_number`
latest_run_number=`redis-cli ${redis_server} -n 0 get run_info:latest_run_number`
echo "Nest run number:   $run_number" 
echo "Latest run number: $latest_run_number" 
echo ""
echo "State | FairMQ device"
echo "---------------------"
ret=`redis-cli ${redis_server} -n 0 keys '*' | grep 'health' `
#echo "$ret"
for str in $ret
do
    dev=${str%:health}
    dev=${dev#daq_service:*:}
    state=`redis-cli ${redis_server} -n 1 hget metrics:state ${dev}`
    echo "$state | $dev"
done
