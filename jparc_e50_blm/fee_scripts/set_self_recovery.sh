#!/bin/bash

BINDIR_BASE=../hul-common-lib/install
BINDIR_AMANEQ=../amaneq-soft/install
echo "BINDIR_BASE:   $BINDIR_BASE"
echo "BINDIR_AMANEQ: $BINDIR_AMANEQ"

# 0x1: Self recovery mode is ON
# 0x0: OFF
CTRL=0x1

$BINDIR_AMANEQ/StrHRTDC/bin/write_mzn_register 192.168.2.168 both 0x20E0 ${CTRL} 1
