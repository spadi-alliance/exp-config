#!/bin/bash

CTRL=0
MIN_TH=0
MAX_TH=0xffff

#LR*9
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.160 0x10500000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.160 0x10600000 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.160 0x10700000 ${MAX_TH} 2

$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.161 0x10500000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.161 0x10600000 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.161 0x10700000 ${MAX_TH} 2

$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.162 0x10500000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.162 0x10600000 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.162 0x10700000 ${MAX_TH} 2

$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.163 0x10500000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.163 0x10600000 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.163 0x10700000 ${MAX_TH} 2

$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.164 0x10500000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.164 0x10600000 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.164 0x10700000 ${MAX_TH} 2

$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.165 0x10500000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.165 0x10600000 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.165 0x10700000 ${MAX_TH} 2

$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.166 0x10500000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.166 0x10600000 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.166 0x10700000 ${MAX_TH} 2

$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.167 0x10500000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.167 0x10600000 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.167 0x10700000 ${MAX_TH} 2

$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.168 0x10500000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.168 0x10600000 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.168 0x10700000 ${MAX_TH} 2



#HR
$HOME/exp-config/rcnp_d202407a/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.169 up 0x2060 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.169 up 0x2070 ${MIN_TH} 2
$HOME/exp-config/rcnp_d202407a/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.169 up 0x2080 ${MAX_TH} 2

