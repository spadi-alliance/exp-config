#!/bin/bash

BINDIR_BASE=../hul-common-lib/install
BINDIR_AMANEQ=../amaneq-soft/install
echo "BINDIR_BASE:   $BINDIR_BASE"
echo "BINDIR_AMANEQ: $BINDIR_AMANEQ"

## Primary crate ##

# AMANEQ001
$BINDIR_BASE/bin/gen_user_reset 192.168.2.161
$BINDIR_BASE/bin/gen_user_reset 192.168.2.162
$BINDIR_BASE/bin/gen_user_reset 192.168.2.163
$BINDIR_BASE/bin/gen_user_reset 192.168.2.164
$BINDIR_BASE/bin/gen_user_reset 192.168.2.165
$BINDIR_BASE/bin/gen_user_reset 192.168.2.166
$BINDIR_BASE/bin/gen_user_reset 192.168.2.167
$BINDIR_BASE/bin/gen_user_reset 192.168.2.168
$BINDIR_BASE/bin/gen_user_reset 192.168.2.169
$BINDIR_BASE/bin/gen_user_reset 192.168.2.170
$BINDIR_AMANEQ/StrHRTDC/bin/gen_mzn_userreset 192.168.2.169 both
$BINDIR_AMANEQ/StrHRTDC/bin/gen_mzn_userreset 192.168.2.170 both

# Secondary crate ##
$BINDIR_BASE/bin/gen_user_reset 192.168.2.173
$BINDIR_BASE/bin/gen_user_reset 192.168.2.174
$BINDIR_BASE/bin/gen_user_reset 192.168.2.175
$BINDIR_BASE/bin/gen_user_reset 192.168.2.176
$BINDIR_BASE/bin/gen_user_reset 192.168.2.177
$BINDIR_BASE/bin/gen_user_reset 192.168.2.178
$BINDIR_BASE/bin/gen_user_reset 192.168.2.179

## CIRASAMEs ##
$BINDIR_BASE/bin/gen_user_reset 192.168.2.101
$BINDIR_BASE/bin/gen_user_reset 192.168.2.102
$BINDIR_BASE/bin/gen_user_reset 192.168.2.103
$BINDIR_BASE/bin/gen_user_reset 192.168.2.104
$BINDIR_BASE/bin/gen_user_reset 192.168.2.105
$BINDIR_BASE/bin/gen_user_reset 192.168.2.106
$BINDIR_BASE/bin/gen_user_reset 192.168.2.107
$BINDIR_BASE/bin/gen_user_reset 192.168.2.108
$BINDIR_BASE/bin/gen_user_reset 192.168.2.109
$BINDIR_BASE/bin/gen_user_reset 192.168.2.110
$BINDIR_BASE/bin/gen_user_reset 192.168.2.111
$BINDIR_BASE/bin/gen_user_reset 192.168.2.112
$BINDIR_BASE/bin/gen_user_reset 192.168.2.113
$BINDIR_BASE/bin/gen_user_reset 192.168.2.114
$BINDIR_BASE/bin/gen_user_reset 192.168.2.115
$BINDIR_BASE/bin/gen_user_reset 192.168.2.116
$BINDIR_BASE/bin/gen_user_reset 192.168.2.117
$BINDIR_BASE/bin/gen_user_reset 192.168.2.118
