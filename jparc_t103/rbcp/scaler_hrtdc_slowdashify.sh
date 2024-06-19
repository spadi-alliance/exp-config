#!/bin/bash

READ_SCR_BIN=../feesoft/amaneq-soft/install/StrHRTDC/bin/read_mzn_scr

echo "scaler_slowdashify.sh start."
echo "making \"dat\" directory"
mkdir -p dat

IP_LIST="
192.168.2.169
192.168.2.170
"

while true
do
    echo ""
    echo "########## Read the scaler information ############"
    for ip in $IP_LIST
    do
	for uplow in up low
	do
	    CMD="$READ_SCR_BIN $ip ${uplow} ./dat/scr.${ip}.${uplow}.dat"
	    echo "$CMD"
	    eval "$CMD"
	    od -j40 -An -v -t u4 -w4      ./dat/scr.${ip}.${uplow}.dat > ./dat/scr_cur.${ip}.${uplow}.txt
	    od -j4 -N4 -An -v -t u4 -w4   ./dat/scr.${ip}.${uplow}.dat > ./dat/hbf_cur.${ip}.${uplow}.txt
	    paste ./dat/scr_pre.${ip}.${uplow}.txt ./dat/scr_cur.${ip}.${uplow}.txt > ./dat/scr_pre_cur.${ip}.${uplow}.txt
	    paste ./dat/hbf_pre.${ip}.${uplow}.txt ./dat/hbf_cur.${ip}.${uplow}.txt > ./dat/hbf_pre_cur.${ip}.${uplow}.txt
	    dur=`awk '{printf ("%d\n", $2-$1)}' ./dat/hbf_pre_cur.${ip}.${uplow}.txt`
	    awk -v dur=$dur '{printf ("%f\n", ($2-$1)/(dur*0.000524))}' ./dat/scr_pre_cur.${ip}.${uplow}.txt > ./dat/scr_rate.${ip}.${uplow}.txt
	    nch=`cat ./dat/scr_rate.${ip}.${uplow}.txt | wc -l`
	    rate_list=`awk '{printf ("%s", NR==1? $1 : ", "$1 )}' ./dat/scr_rate.${ip}.${uplow}.txt`
	    val='{'
	    val=$val'"_attr":{"title":"Count rate","xtitle":"Channel","ytitle":"Rate (Hz)"}, '
	    val=$val'"bins":{"min":"0","max":"'$nch'"}, '
	    val=$val'"counts":['
	    val=$val$rate_list
	    val=$val']'
	    val=$val'}'
	    echo $val
	    redis-cli -n 3 set rate_${ip}_${uplow} "$val"
	    rate_sum=`awk '{sum += $1}END{print sum*8./1000000.}'  ./dat/scr_rate.${ip}.${uplow}.txt`
	    echo rate_sum $rate_sum
	    redis-cli -n 4 ts.add rate_mb_${ip}_${uplow} '*' $rate_sum
	    nch=`cat ./dat/scr_cur.${ip}.${uplow}.txt | wc -l`
	    count_list=`awk '{printf ("%s", NR==1? $1 : ", "$1 )}' ./dat/scr_cur.${ip}.${uplow}.txt`
	    val='{'
	    val=$val'"_attr":{"title":"Count","xtitle":"Channel","ytitle":"Counts"}, '
	    val=$val'"bins":{"min":"0","max":"'$nch'"}, '
	    val=$val'"counts":['
	    val=$val$count_list
	    val=$val']'
	    val=$val'}'
	    echo $val
	    redis-cli -n 3 set scr_${ip}_${uplow} "$val"
	    mv ./dat/scr_cur.${ip}.${uplow}.txt ./dat/scr_pre.${ip}.${uplow}.txt
	    mv ./dat/hbf_cur.${ip}.${uplow}.txt ./dat/hbf_pre.${ip}.${uplow}.txt
	done
    done
    echo "Date:" `date`
    sleep 1
done
