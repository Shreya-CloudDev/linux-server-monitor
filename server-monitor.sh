#!/bin/bash
echo "=== LINUX SERVER HEALTH REPORT ==="
echo "Generated on: $(date)"
echo "=================================="
echo "CPU Usage: $(top -bn1 | grep 'Cpu(s)' | awk '{print $2}')%"
echo "Memory Usage: $(free -h | grep Mem | awk '{print $3}') used"
echo "Disk Usage: $(df -h / | grep / | awk '{print $5}') full"
echo "Uptime: $(uptime -p)"
echo "=================================="
