#!/bin/bash

echo "########### Get directory path including this script ############"
# BASH_SOURCE[0] instead of $0 for source execution
# readlink -f is more common than realpath
DIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
echo "# Script: $(basename ${BASH_SOURCE[0]}), directory: ${DIR}"
echo "#################################################################"

# HR-TDC
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2010 0x0 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2010 0x0 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2010 0x0 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2010 0x0 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2010 0x0 1

${DIR}/../amaneq-soft/install/StrHRTDC/bin/initialize 192.168.2.102 both
${DIR}/../amaneq-soft/install/StrHRTDC/bin/initialize 192.168.2.103 both 
${DIR}/../amaneq-soft/install/StrHRTDC/bin/initialize 192.168.2.104 both
${DIR}/../amaneq-soft/install/StrHRTDC/bin/initialize 192.168.2.105 both
${DIR}/../amaneq-soft/install/StrHRTDC/bin/initialize 192.168.2.106 both

${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2010 0x2 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.103 both 0x2010 0x2 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.104 both 0x2010 0x2 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.105 both 0x2010 0x2 1
${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.106 both 0x2010 0x2 1
