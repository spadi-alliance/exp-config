#!/bin/bash

CTRL=0
# 0: no throttling
# 1: 1/2
# 2: 1/4
# 4: 1/8
# 8: 1/16

$HOME/hul-common-lib/install/bin/write_register 192.168.10.35 0x10B00000 ${CTRL} 1
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.36 up 0x20C0 ${CTRL} 1
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.37 up 0x20C0 ${CTRL} 1

