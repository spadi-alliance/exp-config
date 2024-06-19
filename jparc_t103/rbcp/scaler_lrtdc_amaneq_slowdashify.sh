#!/bin/bash

READ_SCR_BIN=../feesoft/hul-common-lib/install/bin/read_scr

echo "scaler_slowdashify.sh start."
echo "making \"dat\" directory"
mkdir -p dat

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
    echo "########## Read the scaler information ############"
    for ip in $IP_LIST
    do
	CMD="$READ_SCR_BIN $ip ./dat/scr.${ip}.dat"

	echo "$CMD"
	eval "$CMD"
	od -j40 -An -v -t u4 -w4      ./dat/scr.${ip}.dat > ./dat/scr_cur.${ip}.txt
	od -j4 -N4 -An -v -t u4 -w4   ./dat/scr.${ip}.dat > ./dat/hbf_cur.${ip}.txt
	paste ./dat/scr_pre.${ip}.txt ./dat/scr_cur.${ip}.txt > ./dat/scr_pre_cur.${ip}.txt
	paste ./dat/hbf_pre.${ip}.txt ./dat/hbf_cur.${ip}.txt > ./dat/hbf_pre_cur.${ip}.txt
	dur=`awk '{printf ("%d\n", $2-$1)}' ./dat/hbf_pre_cur.${ip}.txt`
	awk -v dur=$dur '{printf ("%f\n", ($2-$1)/(dur*0.000524))}' ./dat/scr_pre_cur.${ip}.txt > ./dat/scr_rate.${ip}.txt
	nch=`cat ./dat/scr_rate.${ip}.txt | wc -l`
	rate_list=`awk '{printf ("%s", NR==1? $1 : ", "$1 )}' ./dat/scr_rate.${ip}.txt`
	val='{'
	val=$val'"_attr":{"title":"Count rate","xtitle":"Channel","ytitle":"Rate (Hz)"}, '
	val=$val'"bins":{"min":"0","max":"'$nch'"}, '
	val=$val'"counts":['
	val=$val$rate_list
	val=$val']'
	val=$val'}'
	echo $val
	redis-cli -n 3 set rate_${ip} "$val"
	rate_sum=`awk '{sum += $1}END{print sum*8./1000000.}'  ./dat/scr_rate.${ip}.txt`
	echo rate_sum $rate_sum
	redis-cli -n 4 ts.add rate_mb_${ip} '*' $rate_sum
	nch=`cat ./dat/scr_cur.${ip}.txt | wc -l`
	count_list=`awk '{printf ("%s", NR==1? $1 : ", "$1 )}' ./dat/scr_cur.${ip}.txt`
	val='{'
	val=$val'"_attr":{"title":"Count","xtitle":"Channel","ytitle":"Counts"}, '
	val=$val'"bins":{"min":"0","max":"'$nch'"}, '
	val=$val'"counts":['
	val=$val$count_list
	val=$val']'
	val=$val'}'
	echo $val
	redis-cli -n 3 set scr_${ip} "$val"
	mv ./dat/scr_cur.${ip}.txt ./dat/scr_pre.${ip}.txt
	mv ./dat/hbf_cur.${ip}.txt ./dat/hbf_pre.${ip}.txt
    done
    echo "Date:" `date`
    sleep 1
done
