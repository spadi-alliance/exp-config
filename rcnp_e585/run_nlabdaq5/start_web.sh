#!/bin/sh

killall -KILL daq-webctl

while true
do
daq-webctl \
	--post-run '/home/spadi/e585/AmaneQ/amaneq_software-main/RcnpGr202303/script/start_daq.sh' \
	--pre-stop '/home/spadi/e585/AmaneQ/amaneq_software-main/RcnpGr202303/script/end_daq.sh'
##>& /dev/null
done
