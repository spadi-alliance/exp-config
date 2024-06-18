#!/bin/bash

CTRL=0
MIN_TH=0x32
MAX_TH=0xffff

$HOME/hul-common-lib/install/bin/write_register 192.168.10.35 0x10500000 ${CTRL} 1
$HOME/hul-common-lib/install/bin/write_register 192.168.10.35 0x10600000 ${MIN_TH} 2
$HOME/hul-common-lib/install/bin/write_register 192.168.10.35 0x10700000 ${MAX_TH} 2

$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.36 up 0x2060 ${CTRL} 1
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.36 up 0x2070 ${MIN_TH} 2
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.36 up 0x2080 ${MAX_TH} 2

$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.37 up 0x2060 ${CTRL} 1
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.37 up 0x2070 ${MIN_TH} 2
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.37 up 0x2080 ${MAX_TH} 2
