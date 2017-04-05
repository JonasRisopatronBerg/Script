#!/bin/bash - 
#===============================================================================
#
#          FILE: SystemInfo.sh
# 
#         USAGE: ./SystemInfo.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jonas Risopatron Berg (), jonasrisopatronberg@gmail.com
#  ORGANIZATION: 
#       CREATED: 29. okt. 2016 05:52
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

echo -e "\e[91m»»»»\e[0m Kernel version & system architecture:" \
	&& uname -a && echo -e "\e[91m»»»»\e[0m Distro:" \
	&& head -n1 /etc/issue \
	&& echo -e "\e[91m»»»»\e[0m Drives/partitions:" \
	&& sudo hdparm -i /dev/sda && cat /proc/partitions \
	&& echo -e "\e[91m»»»»\e[0m RAM:" \
	&& grep MemTotal /proc/meminfo \
	&& echo -e "\e[91m»»»»\e[0m CPU:" \
	&& grep model name /proc/cpuinfo
