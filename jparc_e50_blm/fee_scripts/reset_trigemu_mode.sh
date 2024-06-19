#!/bin/bash

BINDIR_BASE=../hul-common-lib/install
BINDIR_AMANEQ=../amaneq-soft/install
echo "BINDIR_BASE:   $BINDIR_BASE"
echo "BINDIR_AMANEQ: $BINDIR_AMANEQ"

# 0x1: Trigger mode
# 0x2: Veto mode
CTRL=0x0

## MikuClock ##
$BINDIR_BASE/bin/write_register 192.168.2.160 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.171 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.172 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.180 0x10800000 ${CTRL} 1

## Primary crate ##

# AMANEQ001
$BINDIR_BASE/bin/write_register 192.168.2.161 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.162 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.163 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.164 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.165 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.166 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.167 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.168 0x10800000 ${CTRL} 1
$BINDIR_AMANEQ/StrHRTDC/bin/write_mzn_register 192.168.2.169 both 0x2090 ${CTRL} 1
$BINDIR_AMANEQ/StrHRTDC/bin/write_mzn_register 192.168.2.170 both 0x2090 ${CTRL} 1

# Secondary crate ##
$BINDIR_BASE/bin/write_register 192.168.2.173 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.174 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.175 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.176 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.177 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.178 0x10800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.179 0x10800000 ${CTRL} 1

## CIRASAMEs ##
$BINDIR_BASE/bin/write_register 192.168.2.113 0x50800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.114 0x50800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.115 0x50800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.116 0x50800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.117 0x50800000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.118 0x50800000 ${CTRL} 1
