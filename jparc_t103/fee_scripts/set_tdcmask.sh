#!/bin/bash

BINDIR_BASE=../amaneq-soft/install/
echo "BINDIR_BASE: $BINDIR_BASE"

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

## Primary crate ##

# AMANEQ001
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.161 0xffffffff 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ002
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.162 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ003
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.163 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ004
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.164 0x00000000 0x00000000 0xffffffff 0xffffffff 0xffffffff

# AMANEQ005
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.165 0xffffffff 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ006
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.166 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ007
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.167 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ008
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.168 0x00000000 0x00000000 0xffffffff 0xffffffff 0xffffffff

# AMANEQ009
$BINDIR_BASE/StrHRTDC/bin/set_tdcmask 192.168.2.169 both 0x00000000 0xffffffff

# AMANEQ010
$BINDIR_BASE/StrHRTDC/bin/set_tdcmask 192.168.2.170 both 0x00004000 0xffffffff


# Secondary crate ##

# AMANEQ001
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.173 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ002
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.174 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ003
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.175 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ004
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.176 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ005
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.177 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ006
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.178 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# AMANEQ007
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.179 0x00000000 0x00000000 0x00000000 0x00000000 0xffffffff

# MIKUMARI primary and fan-out #
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.160     0xffff0000 0xffffffff 0xffffffff 0xffffffff 0xffffffff 
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.171     0xffffffff 0xffffffff 0xffffffff 0xffffffff 0x00000000
$BINDIR_BASE/StrLRTDC/bin/set_tdcmask 192.168.2.172     0xffffffff 0xffffffff 0xffffffff 0xffffffff 0x00000000
