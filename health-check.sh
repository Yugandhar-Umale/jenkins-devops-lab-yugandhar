#!/bin/bash
set -e

echo "================================"
echo " JENKINS GITHUB CI/CD LAB"
echo "================================"

echo "Build Date:"
date

echo "Hostname:"
hostname

echo "Current User:"
whoami

echo "System Uptime:"
uptime

echo "Memory Usage:"
free -h

echo "Disk Usage:"
df -h /

echo "================================"
echo "CI Script Executed Successfully!"
echo "================================"

echo "================================"
echo "GitHub Automatic Build Test"
echo "Jenkins detected a new GitHub commit!"
echo "================================"
