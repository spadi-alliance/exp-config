#!/bin/bash

CTRL=0
# 0: no throttling
# 1: 1/2
# 2: 1/4
# 4: 1/8
# 8: 1/16

#low resolution
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.160 0x10B00000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.161 0x10B00000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.162 0x10B00000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.163 0x10B00000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.164 0x10B00000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.165 0x10B00000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.166 0x10B00000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.167 0x10B00000 ${CTRL} 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.168 0x10B00000 ${CTRL} 1

#high resolution
$HOME/exp-config/rcnp_d202407a/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.169 both 0x20C0 ${CTRL} 1

