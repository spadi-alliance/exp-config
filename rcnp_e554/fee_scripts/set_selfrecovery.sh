#!/bin/bash


HUL_COMMON_LIB_DIR=$HOME/spadi/install/hul-common-lib
AMANEQ_SOFT_DIR=$HOME/spadi/install/amaneq-soft

# LR-TDC or MIKUMARIK
${HUL_COMMON_LIB_DIR}/bin/write_register 192.168.2.101 0x10D00000 0x1 1

# HR-TDC
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x20E0 0x1 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x20E0 0x1 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x20E0 0x1 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x20E0 0x1 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x20E0 0x1 1
