#!/bin/bash

$HOME/amaneq-soft/install/common/bin/write_register 192.168.10.35 0x10D00000 0x1 1
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.36 up 0x20E0 0x1 1
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.37 up 0x20E0 0x1 1
