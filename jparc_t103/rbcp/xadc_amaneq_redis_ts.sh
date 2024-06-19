#!/bin/bash

READ_XADC_BIN=$HOME/e50test_202404/feesoft/hul-common-lib/install/bin/read_xadc

IP_LIST="
192.168.2.160
192.168.2.161
192.168.2.162
192.168.2.163
192.168.2.164
192.168.2.165
192.168.2.166
192.168.2.167
192.168.2.168
192.168.2.169
192.168.2.170
192.168.2.171
192.168.2.172
192.168.2.173
192.168.2.174
192.168.2.175
192.168.2.176
192.168.2.177
192.168.2.178
192.168.2.179
192.168.2.180
"

while true
do
    echo ""
    echo "########## Read XADC information ############"
    for ip in $IP_LIST
    do
	echo ${ip}
	ret=`${READ_XADC_BIN} ${ip}`
	xadc_fpga_temp=`    echo "$ret" | awk 'NR==1 {print $4}'`
	xadc_vccint=`       echo "$ret" | awk 'NR==2 {print $3}'`
	xadc_vccaux=`       echo "$ret" | awk 'NR==3 {print $3}'`
	xadc_over_temp=`    echo "$ret" | awk 'NR==6 {print $7}'`
	xadc_temp_alarm=`   echo "$ret" | awk 'NR==7 {print $7}'`
	xadc_vccint_alarm=` echo "$ret" | awk 'NR==8 {print $6}'`
	echo "$ret"
	echo $xadc_fpga_temp
	echo $xadc_vccint
	echo $xadc_vccaux
	echo $xadc_over_temp
	echo $xadc_temp_alarm
	echo $xadc_vccint_alarm
	redis-cli -n 4 ts.add xadc:fpga_temp:${ip}    '*' $xadc_fpga_temp
	redis-cli -n 4 ts.add xadc:vccint:${ip}       '*' $xadc_vccint
	redis-cli -n 4 ts.add xadc:vccaux:${ip}       '*' $xadc_vccaux
	redis-cli -n 4 ts.add xadc:over_temp:${ip}    '*' $xadc_over_temp
	redis-cli -n 4 ts.add xadc:temp_alarm:${ip}   '*' $xadc_temp_alarm
	redis-cli -n 4 ts.add xadc:vccint_alarm:${ip} '*' $xadc_vccint_alarm
    done
    echo "Date:" `date`
    sleep 1
done
