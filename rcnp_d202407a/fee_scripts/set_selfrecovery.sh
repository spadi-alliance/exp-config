#!/bin/bash
#low resolution
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.160 0x10D00000 0x1 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.161 0x10D00000 0x1 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.162 0x10D00000 0x1 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.163 0x10D00000 0x1 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.164 0x10D00000 0x1 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.165 0x10D00000 0x1 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.166 0x10D00000 0x1 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.167 0x10D00000 0x1 1
$HOME/exp-config/rcnp_d202407a/hul-common-lib/install/bin/write_register 192.168.2.168 0x10D00000 0x1 1




#high resolution
$HOME/exp-config/rcnp_d202407a/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.169 both 0x20E0 0x1 1
