#!/bin/bash

SCRIPTDIR=$(cd $(dirname $0); pwd)

BINDIR_BASE=$SCRIPTDIR/../hul-common-lib/install/bin

# StrLrTdc
$BINDIR_BASE/./write_register 192.168.2.161 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.162 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.163 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.164 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.165 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.166 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.167 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.168 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.173 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.174 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.175 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.176 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.177 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.178 0x10400000 0x0 1
$BINDIR_BASE/./write_register 192.168.2.179 0x10400000 0x0 1

# StrHrTdc

# MikuClock
# Paring mode => OFF
$BINDIR_BASE/./write_register 192.168.2.160 0x10400000 0x2 1
$BINDIR_BASE/./write_register 192.168.2.171 0x10400000 0x2 1
$BINDIR_BASE/./write_register 192.168.2.172 0x10400000 0x2 1
$BINDIR_BASE/./write_register 192.168.2.180 0x10400000 0x2 1
