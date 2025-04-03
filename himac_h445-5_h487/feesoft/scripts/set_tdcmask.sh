#!/bin/bash

# Usage:
#   LRTDC: set_tdcmask [IP address] [Mask value Main-U (Hex)] [Mask value Main-D (Hex)] [Mask value MZN-U (Hex)] [Mask value MZN-D (Hex)] [kMaskEx]
#   HRTDC: set_tdcmask [IP address] [Mezzanine existence] [Mask value uppper mezzanine (Hex)] [Mask value lower mezzanine (Hex)]
#     Description of mezzanine existence
#     - up   (mezzanine is attached on upper slot)
#     - low  (mezzanine is attached on lower slot)
#     - both (mezzanine is attached on both slot2)
#
# Bit:
#   Bit 1: masked (channel disabled), Bit 0: unmasked (channel enabled)
#
# Example:
#   Taking all channels (No mask)
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x00000000 0x00000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x00000000 0x00000000
#   All channels are masked (No TDC data taken)
#     LRTDC: set_tdcmask xx.xx.xx.xx      0xffffffff 0xffffffff 0xffffffff 0xfffffffff 0xffffffff (Is this correct?)
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0xffffffff 0xffffffff
#   Only first channel (ch0) is masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x00000001 0x00000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x00000001 0x00000000
#   ch0 - ch3 are masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x0000000f 0x00000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x0000000f 0x00000000
#   Only ch0 - ch3 are taken
#     LRTDC: set_tdcmask xx.xx.xx.xx      0xfffffff0 0xffffffff 0xffffffff 0xfffffffff 0xffffffff (Is this correct?)
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0xfffffff0 0xffffffff
#   Only ch31 is masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x80000000 0x00000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x80000000 0x00000000
#   Only ch32 is masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x00000000 0x00000001 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x00000000 0x00000001
#   Only ch63 is masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x00000000 0x80000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x00000000 0x80000000

echo "########### Get directory path including this script ############"
# BASH_SOURCE[0] instead of $0 for source execution
# readlink -f is more common than realpath
DIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
echo "# Script: $(basename ${BASH_SOURCE[0]}), directory: ${DIR}"
echo "#################################################################"

# LR-TDC or NIKUMARI
${DIR}/../amaneq-soft/install/StrLRTDC/bin/set_tdcmask 192.168.2.101       0x00000000 0x00000000 0x00000000 0x000000000 0x0
# HR-TDC
${DIR}/../amaneq-soft/install/StrHRTDC/bin/set_tdcmask 192.168.2.103 both  0xffff0000 0xffffffff
${DIR}/../amaneq-soft/install/StrHRTDC/bin/set_tdcmask 192.168.2.102 both  0x00000000 0x00000000
${DIR}/../amaneq-soft/install/StrHRTDC/bin/set_tdcmask 192.168.2.104 both  0x00000000 0x00000000
${DIR}/../amaneq-soft/install/StrHRTDC/bin/set_tdcmask 192.168.2.105 both  0x00000000 0x00000000
${DIR}/../amaneq-soft/install/StrHRTDC/bin/set_tdcmask 192.168.2.106 both  0x00000000 0x00000000
