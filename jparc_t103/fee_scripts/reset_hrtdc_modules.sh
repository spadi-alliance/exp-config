#!/bin/bash

BINDIR_BASE=../hul-common-lib/install
BINDIR_AMANEQ=../amaneq-soft/install
echo "BINDIR_BASE:   $BINDIR_BASE"
echo "BINDIR_AMANEQ: $BINDIR_AMANEQ"

## Primary crate ##

$BINDIR_BASE/bin/gen_user_reset 192.168.2.169
$BINDIR_BASE/bin/gen_user_reset 192.168.2.170
$BINDIR_AMANEQ/StrHRTDC/bin/gen_mzn_userreset 192.168.2.169 both
$BINDIR_AMANEQ/StrHRTDC/bin/gen_mzn_userreset 192.168.2.170 both
