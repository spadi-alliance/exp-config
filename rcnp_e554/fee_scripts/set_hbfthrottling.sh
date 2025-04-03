#!/bin/bash

HUL_COMMON_LIB_DIR=$HOME/spadi/install/hul-common-lib
AMANEQ_SOFT_DIR=$HOME/spadi/install/amaneq-soft

CTRL=0
# 0: no throttling
# 1: 1/2
# 2: 1/4
# 4: 1/8
# 8: 1/16

# LR-TDC or MIKUMARI
${HUL_COMMON_LIB_DIR=}/bin/write_register 192.168.2.101 0x10B00000 ${CTRL} 1

# HR-TDC
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x20C0 ${CTRL} 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x20C0 ${CTRL} 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x20C0 ${CTRL} 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x20C0 ${CTRL} 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x20C0 ${CTRL} 1
