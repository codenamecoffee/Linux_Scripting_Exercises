#!/usr/bin/env bash
set -euo pipefail

echo -e "\n** Show all processes for my user:\n"
ps -u $USER # Environment variable with the current user's name

# -b: batch mode
# -n 5: show 5 updates
# -d 2: refresh every 2 seconds

echo -e "\n** Monitor processes in real time (Top in batch mode):\n"
top -b -n 5 -d 2

# This command (htop) cannot be stopped automatically. It keeps running unless
# you use ctrl + c, or press the corresponding option in the interface
# to close the process. You can also click the button in the interface with the mouse.
# GPT says that 'q' also works.

echo -e "\nMonitor processes in real time (modern version): \n"
htop

# -c 5: send 5 ICMP packets and then stop.

echo -e "\nTesting connection to Google (5 packets):\n"
ping -c 5 google.com
