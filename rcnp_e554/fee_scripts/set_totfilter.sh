#!/bin/bash

HUL_COMMON_LIB_DIR=$HOME/spadi/install/hul-common-lib
AMANEQ_SOFT_DIR=$HOME/spadi/install/amaneq-soft

CTRL=0
MIN_TH=0
MAX_TH=0xffffffff

# LR-TDC or MIKUMARI
${HUL_COMMON_LIB_DIR}/bin/write_register 192.168.2.101 0x10500000 ${CTRL} 1
${HUL_COMMON_LIB_DIR}/bin/write_register 192.168.2.101 0x10600000 ${MIN_TH} 2
${HUL_COMMON_LIB_DIR}/bin/write_register 192.168.2.101 0x10700000 ${MAX_TH} 2

# HR-TDC
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2060 ${CTRL} 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2060 ${CTRL} 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2060 ${CTRL} 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2060 ${CTRL} 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2060 ${CTRL} 1

${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2070 ${MIN_TH} 2
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2070 ${MIN_TH} 2
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2070 ${MIN_TH} 2
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2070 ${MIN_TH} 2
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2070 ${MIN_TH} 2

${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2080 ${MAX_TH} 2
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2080 ${MAX_TH} 2
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2080 ${MAX_TH} 2
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2080 ${MAX_TH} 2
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2080 ${MAX_TH} 2
