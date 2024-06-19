#!/bin/bash

BINDIR_AMANEQ=../amaneq-soft/install
echo "BINDIR_AMANEQ: $BINDIR_AMANEQ"

$BINDIR_AMANEQ/StrHRTDC/bin/initialize 192.168.2.168 both
$BINDIR_AMANEQ/StrHRTDC/bin/write_mzn_register 192.168.2.168 both 0x2010 0x2 1
