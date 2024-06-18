#!/bin/bash

$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.36 up 0x2010 0x0 1
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.37 up 0x2010 0x0 1
$HOME/amaneq-soft/install/StrHRTDC/bin/initialize 192.168.10.36 up
$HOME/amaneq-soft/install/StrHRTDC/bin/initialize 192.168.10.37 up
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.36 up 0x2010 0x2 1
$HOME/amaneq-soft/install/StrHRTDC/bin/write_mzn_register 192.168.10.37 up 0x2010 0x2 1
