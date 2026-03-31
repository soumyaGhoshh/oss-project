#!/bin/bash
# Script 1: System Identity Report
# Author: Soumya Ghosh | Course: OSS

KERNEL=$(uname -r)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d'"' -f2)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_NOW=$(date)

echo "=========================================="
echo " OSS Audit System Report - Soumya Ghosh"
echo "=========================================="
echo "Linux Distro   : $DISTRO"
echo "Kernel Version : $KERNEL"
echo "Current User   : $USER_NAME"
echo "System Uptime  : $UPTIME"
echo "Current Date   : $DATE_NOW"
echo "------------------------------------------"
echo "License: This system runs on Ubuntu (GPL)."
echo "=========================================="

