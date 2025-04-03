#/bin/bash

echo "########### Get directory path including this script ############"
# BASH_SOURCE[0] instead of $0 for source execution
# readlink -f is more common than realpath
DIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
echo "# Script: $(basename ${BASH_SOURCE[0]}), directory: ${DIR}"
echo "#################################################################"

${DIR}/init_hrtdc.sh
${DIR}/set_tdcmask.sh
${DIR}/set_totfilter.sh
${DIR}/set_selfrecovery.sh
${DIR}/set_hbfthrottling.sh
${DIR}/set_bypass_pairing.sh
${DIR}/set_hbfstate_on.sh
