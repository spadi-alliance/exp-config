#!/bin/bash

SCRIPTDIR=$(cd $(dirname $0); pwd)

BINDIR_HRTDC=$SCRIPTDIR/../amaneq-soft/install/StrHRTDC/bin

# StrLRTDC/bin/set_tdcmask [IP address] [Mask value Main-U (Hex)] [Mask value Main-D (Hex)] [Mask value MZN-U (Hex)] [Mask value MZN-D (Hex)] [Mask value Extra (hex)]
# StrHRTDC/bin/set_tdcmask [IP address] [Mask value uppper mezzanine (Hex)] [Mask value lower mezzanine (Hex)]
# Logic 1 --> Masked, channel disabled
# Login 0 --> Unmasked, channel enabled
#
# Examples
# If you want to use all channels,
#    set_tdcmask <IP address> 0x00000000 0x00000000 0x00000000 0x00000000
# If you want to disable all channels
#    set_tdcmask <IP address> 0xffffffff 0xffffffff 0xffffffff 0xffffffff
# If you want to use only the first channel (ch0),
#    set_tdcmask <IP address> 0xfffffffe 0xffffffff 0xffffffff 0xffffffff
# If you want to use only the first 4 channels (ch0 - ch3),
#    set_tdcmask <IP address> 0xfffffff0 0xffffffff 0xffffffff 0xffffffff
# If you want to use only the last channel (ch127),
#    set_tdcmask <IP address> 0xfffffffe 0xffffffff 0xffffffff 0x7fffffff

# AMANEQ008
$BINDIR_HRTDC/./set_tdcmask 192.168.2.168 both 0xffff0000 0xffffffff
