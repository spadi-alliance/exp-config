#!/bin/bash

AMANEQ_SOFT_DIR=$HOME/spadi/install/amaneq-soft

# HR-TDC
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2010 0x0 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2010 0x0 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2010 0x0 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2010 0x0 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2010 0x0 1

${AMANEQ_SOFT_DIR}/StrHRTDC/bin/initialize 192.168.2.102 both
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/initialize 192.168.2.103 both 
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/initialize 192.168.2.104 both
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/initialize 192.168.2.105 both
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/initialize 192.168.2.106 both

${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2010 0x2 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2010 0x2 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2010 0x2 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2010 0x2 1
${AMANEQ_SOFT_DIR}/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2010 0x2 1
