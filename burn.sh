#!/bin/bash
#
for i in `seq 1 $(cat /proc/cpuinfo |grep "physical id" |wc -l)`; do dd if=/dev/zero of=/dev/null & done

# 停止命令：pkill -12 dd