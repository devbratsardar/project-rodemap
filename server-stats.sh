#!/bin/bash
# ---------- CPU USAGE ----------
echo -e "\n🔹 CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "% used"}'

# ---------- MEMORY USAGE ----------
echo -e "\n🔹 Memory Usage:"
free -h | awk '
NR==1{print $0}
NR==2{
  used=$3; free=$4; total=$2;
  perc=(used/total)*100;
  printf "Total: %s | Used: %s | Free: %s | Used: %.2f%%\n", total, used, free, perc
}'

# ---------- DISK USAGE ----------
echo -e "\n🔹 Disk Usage:"
df -h --total | grep total | awk '{printf "Total: %s | Used: %s | Free: %s | Used: %s\n", $2, $3, $4, $5}'

# ---------- TOP 5 PROCESSES BY CPU ----------
echo -e "\n🔹 Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# ---------- TOP 5 PROCESSES BY MEMORY ----------
echo -e "\n🔹 Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6


