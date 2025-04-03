#!/bin/bash

# Get directory path including this script
DIR=$(dirname $(realpath $0))
echo "Script: $(basename $0), directory: ${DIR}"

# LR-TDC or MIKUMARI
${DIR}/../hul-common-lib/install/bin/gen_user_reset 192.168.2.101
${DIR}/../hul-common-lib/install/bin/gen_user_reset 192.168.2.102
${DIR}/../hul-common-lib/install/bin/gen_user_reset 192.168.2.103
${DIR}/../hul-common-lib/install/bin/gen_user_reset 192.168.2.104
${DIR}/../hul-common-lib/install/bin/gen_user_reset 192.168.2.105
${DIR}/../hul-common-lib/install/bin/gen_user_reset 192.168.2.106

# HR-TDC
${DIR}/../amaneq-soft/install/StrHRTDC/bin/gen_mzn_userreset 192.168.2.102 both
${DIR}/../amaneq-soft/install/StrHRTDC/bin/gen_mzn_userreset 192.168.2.103 both
${DIR}/../amaneq-soft/install/StrHRTDC/bin/gen_mzn_userreset 192.168.2.104 both
${DIR}/../amaneq-soft/install/StrHRTDC/bin/gen_mzn_userreset 192.168.2.105 both
${DIR}/../amaneq-soft/install/StrHRTDC/bin/gen_mzn_userreset 192.168.2.106 both
