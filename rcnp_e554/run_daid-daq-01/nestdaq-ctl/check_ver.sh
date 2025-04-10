#/bin/bash

echo "########### Get directory path including this script ############"
# BASH_SOURCE[0] instead of $0 for source execution
# readlink -f for link file, more common than realpath
DIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
echo "# Script: $(basename ${BASH_SOURCE[0]}), directory: ${DIR}"
echo "#################################################################"

lrtdc_ip_list="192.168.2.101"
hrtdc_ip_list="192.168.2.102 192.168.2.103 192.168.2.104 192.168.2.105 192.168.2.106"

for ip in ${lrtdc_ip_list}
do
    echo ""
    echo "ip: $ip"
    echo ""
    ${DIR}/../../feesoft/hul-common-lib/install/bin/get_version $ip
done
for ip in ${hrtdc_ip_list}
do
    echo ""
    echo "ip: $ip"
    echo ""
    ${DIR}/../../feesoft/amaneq-soft/install/StrHRTDC/bin/get_version_hrtdc $ip both
done
