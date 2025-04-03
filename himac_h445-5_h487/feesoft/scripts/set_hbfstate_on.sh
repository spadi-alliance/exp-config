#!/bin/bash

echo "########### Get directory path including this script ############"
# BASH_SOURCE[0] instead of $0 for source execution
# readlink -f is more common than realpath
DIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
echo "# Script: $(basename ${BASH_SOURCE[0]}), directory: ${DIR}"
echo "#################################################################"

# MIKUMARI Primary
${DIR}/../hul-common-lib/install/bin/set_hbfstate 192.168.2.101 on
