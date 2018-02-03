#!/bin/bash
#
# This script prints the CPU and GPU temperature on the Tinker Board
# Mike Dice (mikedice417@hotmail.com, @mikedice417)
#
cputemp=$(</sys/class/thermal/thermal_zone1/temp)
gputemp=$(</sys/class/thermal/thermal_zone2/temp)
echo "CPU: " $(echo "scale=2; ($cputemp/1000) * (9/5) + 32" |bc)
echo "GPU: " $(echo "scale=2; ($gputemp/1000) * (9/5) + 32" |bc)

