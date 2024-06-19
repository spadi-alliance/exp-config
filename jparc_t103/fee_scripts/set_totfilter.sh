#!/bin/bash

BINDIR_BASE=../hul-common-lib/install
echo "BINDIR_BASE: $BINDIR_BASE"

CTRL=0x1

# 0x32 ==> 50 
# 0x28 ==> 40
# 0x2d ==> 45

MIN_TH_BDC=0x32
MAX_TH_BDC=0xffff

MIN_TH_SFT=0x0
MAX_TH_SFT=0xffff

MIN_TH_KL1=0x2d
MAX_TH_KL1=0xffff

MIN_TH_KL2=0x28
MAX_TH_KL2=0xffff

#########################################################################
## Primary crate ##

################
#BDC

# AMANEQ001
$BINDIR_BASE/bin/write_register 192.168.2.161 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.161 0x10600000 ${MIN_TH_BDC} 2
$BINDIR_BASE/bin/write_register 192.168.2.161 0x10700000 ${MAX_TH_BDC} 2

# AMANEQ002
$BINDIR_BASE/bin/write_register 192.168.2.162 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.162 0x10600000 ${MIN_TH_BDC} 2
$BINDIR_BASE/bin/write_register 192.168.2.162 0x10700000 ${MAX_TH_BDC} 2

# AMANEQ003
$BINDIR_BASE/bin/write_register 192.168.2.163 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.163 0x10600000 ${MIN_TH_BDC} 2
$BINDIR_BASE/bin/write_register 192.168.2.163 0x10700000 ${MAX_TH_BDC} 2

# AMANEQ004
$BINDIR_BASE/bin/write_register 192.168.2.164 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.164 0x10600000 ${MIN_TH_BDC} 2
$BINDIR_BASE/bin/write_register 192.168.2.164 0x10700000 ${MAX_TH_BDC} 2

# AMANEQ005
$BINDIR_BASE/bin/write_register 192.168.2.165 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.165 0x10600000 ${MIN_TH_BDC} 2
$BINDIR_BASE/bin/write_register 192.168.2.165 0x10700000 ${MAX_TH_BDC} 2

# AMANEQ006
$BINDIR_BASE/bin/write_register 192.168.2.166 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.166 0x10600000 ${MIN_TH_BDC} 2
$BINDIR_BASE/bin/write_register 192.168.2.166 0x10700000 ${MAX_TH_BDC} 2

# AMANEQ007
$BINDIR_BASE/bin/write_register 192.168.2.167 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.167 0x10600000 ${MIN_TH_BDC} 2
$BINDIR_BASE/bin/write_register 192.168.2.167 0x10700000 ${MAX_TH_BDC} 2

# AMANEQ008
$BINDIR_BASE/bin/write_register 192.168.2.168 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.168 0x10600000 ${MIN_TH_BDC} 2
$BINDIR_BASE/bin/write_register 192.168.2.168 0x10700000 ${MAX_TH_BDC} 2


#########################################################################
# Secondary crate ##

################
#SFT

# AMANEQ001
$BINDIR_BASE/bin/write_register 192.168.2.173 0x10500000 0x0 1
$BINDIR_BASE/bin/write_register 192.168.2.173 0x10600000 ${MIN_TH_SFT} 2
$BINDIR_BASE/bin/write_register 192.168.2.173 0x10700000 ${MAX_TH_SFT} 2

# AMANEQ002
$BINDIR_BASE/bin/write_register 192.168.2.174 0x10500000 0x0 1
$BINDIR_BASE/bin/write_register 192.168.2.174 0x10600000 ${MIN_TH_SFT} 2
$BINDIR_BASE/bin/write_register 192.168.2.174 0x10700000 ${MAX_TH_SFT} 2

# AMANEQ003
$BINDIR_BASE/bin/write_register 192.168.2.175 0x10500000 0x0 1
$BINDIR_BASE/bin/write_register 192.168.2.175 0x10600000 ${MIN_TH_SFT} 2
$BINDIR_BASE/bin/write_register 192.168.2.175 0x10700000 ${MAX_TH_SFT} 2

################
#KLDC

# AMANEQ004
$BINDIR_BASE/bin/write_register 192.168.2.176 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.176 0x10600000 ${MIN_TH_KL1} 2
$BINDIR_BASE/bin/write_register 192.168.2.176 0x10700000 ${MAX_TH_KL1} 2

# AMANEQ005
$BINDIR_BASE/bin/write_register 192.168.2.177 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.177 0x10600000 ${MIN_TH_KL1} 2
$BINDIR_BASE/bin/write_register 192.168.2.177 0x10700000 ${MAX_TH_KL1} 2 

# AMANEQ006
$BINDIR_BASE/bin/write_register 192.168.2.178 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.178 0x10600000 ${MIN_TH_KL2} 2
$BINDIR_BASE/bin/write_register 192.168.2.178 0x10700000 ${MAX_TH_KL2} 2

# AMANEQ007
$BINDIR_BASE/bin/write_register 192.168.2.179 0x10500000 ${CTRL} 1
$BINDIR_BASE/bin/write_register 192.168.2.179 0x10600000 ${MIN_TH_KL2} 2
$BINDIR_BASE/bin/write_register 192.168.2.179 0x10700000 ${MAX_TH_KL2} 2
