#!/bin/bash

# DISK I/O monitor/plotter suit. See also the readme.txt
#
# Based on a temperature_monitor suit.
# Runs the temperature_scan.sh in a regular interval (e.g. 1 min) and log into a file.
# input: none
# output: diskio_scan.dat
#
# created 22.04.2024

# Path to the temperature checking script
temp_check_script="~/bin/diskio_scan.sh"

# Path to the log file
log_file="./diskio_log.txt"

# Time interval between temperature checks (in seconds)
interval=60  # 60 seconds

# Infinite loop to run the temperature checking script repeatedly
while true; do
    # Run the temperature checking script and append the output to the log file
    $temp_check_script >> $log_file

    # Wait for the specified interval before running again
    sleep $interval
done
