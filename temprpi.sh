#!/bin/bash
#
# This script prints the CPU and GPU temperature on a Raspberry Pi 3
# Mike Dice (mikedice417@hotmail.com, @mikedice417)
#
cputemp=$(</sys/class/thermal/thermal_zone0/temp)
echo "CPU: " $(echo "scale=2; ($cputemp/1000) * (9/5) + 32" |bc) "F"

