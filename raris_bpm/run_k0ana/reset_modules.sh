#!/bin/bash

$HOME/hul-common-lib/install/bin/gen_user_reset 192.168.10.35
$HOME/hul-common-lib/install/bin/gen_user_reset 192.168.10.36 
$HOME/hul-common-lib/install/bin/gen_user_reset 192.168.10.37
$HOME/amaneq-soft/install/StrHRTDC/bin/gen_mzn_userreset 192.168.10.36 up
$HOME/amaneq-soft/install/StrHRTDC/bin/gen_mzn_userreset 192.168.10.37 up
