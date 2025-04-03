#!/bin/bash

HUL_COMMON_LIB_DIR=$HOME/spadi/install/hul-common-lib
AMANEQ_SOFT_DIR=$HOME/spadi/install/amaneq-soft

# LR-TDC or MIKUMARI
${HUL_COMMON_LIB_DIR}/bin/gen_user_reset 192.168.2.101
${HUL_COMMON_LIB_DIR}/bin/gen_user_reset 192.168.2.102
${HUL_COMMON_LIB_DIR}/bin/gen_user_reset 192.168.2.103
${HUL_COMMON_LIB_DIR}/bin/gen_user_reset 192.168.2.104
${HUL_COMMON_LIB_DIR}/bin/gen_user_reset 192.168.2.105
${HUL_COMMON_LIB_DIR}/bin/gen_user_reset 192.168.2.106

# HR-TDC
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/gen_mzn_userreset 192.168.2.102 both
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/gen_mzn_userreset 192.168.2.103 both
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/gen_mzn_userreset 192.168.2.104 both
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/gen_mzn_userreset 192.168.2.105 both
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/gen_mzn_userreset 192.168.2.106 both
