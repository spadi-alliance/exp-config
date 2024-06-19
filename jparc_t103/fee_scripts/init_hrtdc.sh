#!/bin/bash

BINDIR_AMANEQ=../amaneq-soft/install
echo "BINDIR_AMANEQ: $BINDIR_AMANEQ"

$BINDIR_AMANEQ/StrHRTDC/bin/write_mzn_register 192.168.2.169 both 0x2010 0x0 1
$BINDIR_AMANEQ/StrHRTDC/bin/write_mzn_register 192.168.2.170 both 0x2010 0x0 1
$BINDIR_AMANEQ/StrHRTDC/bin/initialize 192.168.2.169 both
$BINDIR_AMANEQ/StrHRTDC/bin/initialize 192.168.2.170 both
$BINDIR_AMANEQ/StrHRTDC/bin/write_mzn_register 192.168.2.169 both 0x2010 0x2 1
$BINDIR_AMANEQ/StrHRTDC/bin/write_mzn_register 192.168.2.170 both 0x2010 0x2 1
