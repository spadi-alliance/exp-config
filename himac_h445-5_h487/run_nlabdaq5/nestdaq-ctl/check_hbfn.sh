#!/bin/bash
ip_list="
192.168.2.101
192.168.2.102
192.168.2.103
192.168.2.104
192.168.2.105
192.168.2.106
"

while true
do
    echo ""
    date
    for ip in ${ip_list}
    do
	str=$(timeout 0.2 nc $ip 24 2>/dev/null | od -tx8 -w8 | grep -e ' 70' | head -1)
	hnum=$(echo $str | awk '{print substr($2, 11, 6)}')
	dnum=$(echo $hnum | awk '{print strtonum("0x"$1)}')
	time=$(echo $hnum | awk '{print strtonum("0x"$1)*0.000524288}')
	echo "IP: $ip, od: \"$str\", HBF# 0x$hnum 0d$dnum ($time sec)"
    done
    for ip in ${ip_list}
    do
	str=$(timeout 0.2 nc $ip 24 2>/dev/null | od -tx8 -w8 | grep -e ' 78' | head -1)
	hnum1=$(echo $str | awk '{print substr($2,  7, 5)}')
	hnum2=$(echo $str | awk '{print substr($2, 12, 5)}')
	dnum1=$(echo $hnum1 | awk '{print strtonum("0x"$1)}')
	dnum2=$(echo $hnum2 | awk '{print strtonum("0x"$1)}')
	rate1=$(echo $dnum1 | awk '{print $1/0.000524288}')
	rate2=$(echo $dnum2 | awk '{print $1/0.000524288}')
	ratemb1=$(echo $rate1 | awk '{print $1/1024/1024}')
	ratemb2=$(echo $rate2 | awk '{print $1/1024/1024}')
	echo "IP: $ip, od: \"$str\""
	echo "Generated data:  0x$hnum1 ($dnum1) Bytes, $rate1 Byte/s, $ratemb1 MB/s"
	echo "Transfered data: 0x$hnum2 ($dnum2) Bytes, $rate2 Byte/s, $ratemb2 MB/s"
    done
    sleep 1
done
