#!/bin/bash
# HR-TDC for SR-PPAC

echo "########### Get directory path including this script ############"
# BASH_SOURCE[0] instead of $0 for source execution
# readlink -f is more common than realpath
DIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
echo "# Script: $(basename ${BASH_SOURCE[0]}), directory: ${DIR}"
echo "#################################################################"

${DIR}/../amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.2.102 both 0x2050 0x2 1
