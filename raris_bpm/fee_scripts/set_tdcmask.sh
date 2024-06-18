#!/bin/bash

# Usage:
#   LRTDC: set_tdcmask [IP address] [Mask value Main-U (Hex)] [Mask value Main-D (Hex)] [Mask value MZN-U (Hex)] [Mask value MZN-D (Hex)] [kMaskEx]
#   HRTDC: set_tdcmask [IP address] [Mezzanine existence] [Mask value uppper mezzanine (Hex)] [Mask value lower mezzanine (Hex)]
#     Description of mezzanine existence
#     - up   (mezzanine is attached on upper slot)
#     - low  (mezzanine is attached on lower slot)
#     - both (mezzanine is attached on both slot2)
#
# Bit:
#   Bit 1: masked (channel disabled), Bit 0: unmasked (channel enabled)
#
# Example:
#   Taking all channels (No mask)
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x00000000 0x00000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x00000000 0x00000000
#   All channels are masked (No TDC data taken)
#     LRTDC: set_tdcmask xx.xx.xx.xx      0xffffffff 0xffffffff 0xffffffff 0xfffffffff 0xffffffff (Is this correct?)
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0xffffffff 0xffffffff
#   Only first channel (ch0) is masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x00000001 0x00000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x00000001 0x00000000
#   ch0 - ch3 are masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x0000000f 0x00000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x0000000f 0x00000000
#   Only ch0 - ch3 are taken
#     LRTDC: set_tdcmask xx.xx.xx.xx      0xfffffff0 0xffffffff 0xffffffff 0xfffffffff 0xffffffff (Is this correct?)
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0xfffffff0 0xffffffff
#   Only ch31 is masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x80000000 0x00000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x80000000 0x00000000
#   Only ch32 is masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x00000000 0x00000001 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x00000000 0x00000001
#   Only ch63 is masked
#     LRTDC: set_tdcmask xx.xx.xx.xx      0x00000000 0x80000000 0x00000000 0x000000000 0x0
#     HRTDC: set_tdcmask xx.xx.xx.xx both 0x00000000 0x80000000

$HOME/amaneq-soft/install/StrLRTDC/bin/set_tdcmask 192.168.10.35      0x00000000 0x00000000 0x00000000 0x000000000 0x0
$HOME/amaneq-soft/install/StrHRTDC/bin/set_tdcmask 192.168.10.36 up 0x00000000 0x0
$HOME/amaneq-soft/install/StrHRTDC/bin/set_tdcmask 192.168.10.37 up 0x00000000 0x0
