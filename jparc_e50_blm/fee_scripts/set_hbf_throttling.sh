#!/bin/bash

BINDIR_BASE=../hul-common-lib/install
BINDIR_AMANEQ=../amaneq-soft/install
echo "BINDIR_BASE:   $BINDIR_BASE"
echo "BINDIR_AMANEQ: $BINDIR_AMANEQ"


# 0x1: 1/2
# 0x2: 1/4
# 0x4: 1/8
# 0x8: 1/16
CTRL=0x0

## Primary crate ##

$BINDIR_AMANEQ/StrHRTDC/bin/write_mzn_register 192.168.2.168 both 0x20C0 ${CTRL} 1
