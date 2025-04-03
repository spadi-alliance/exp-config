#!/bin/bash

echo "########### Get directory path including this script ############"
# BASH_SOURCE[0] instead of $0 for source execution
# readlink -f is more common than realpath
DIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
echo "# Script: $(basename ${BASH_SOURCE[0]}), directory: ${DIR}"
echo "#################################################################"

CTRL=0
MIN_TH=0
MAX_TH=0xffff

# LR-TDC or MIKUMARI
${DIR}/../hul-common-lib/install/bin/write_register 192.168.2.101 0x10500000 ${CTRL} 1
${DIR}/../hul-common-lib/install/bin/write_register 192.168.2.101 0x10600000 ${MIN_TH} 2
${DIR}/../hul-common-lib/install/bin/write_register 192.168.2.101 0x10700000 ${MAX_TH} 2

# HR-TDC
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2060 ${CTRL} 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2060 ${CTRL} 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2060 ${CTRL} 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2060 ${CTRL} 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2060 ${CTRL} 1

${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2070 ${MIN_TH} 2
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2070 ${MIN_TH} 2
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2070 ${MIN_TH} 2
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2070 ${MIN_TH} 2
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2070 ${MIN_TH} 2

${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2080 ${MAX_TH} 2
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2080 ${MAX_TH} 2
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2080 ${MAX_TH} 2
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2080 ${MAX_TH} 2
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2080 ${MAX_TH} 2
