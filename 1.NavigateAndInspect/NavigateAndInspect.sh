#!/usr/bin/env bash
set -euo pipefail

echo -e "\n** Creating directory 'linux-challenge'..."
mkdir -p linux-challenge

echo -e "\n** Entering the directory..."
cd linux-challenge || { echo "Could not enter the directory"; exit 1; }

echo -e "\n** Checking current location:\n"
pwd

echo -e "\n** Listing directory contents:\n"
ls -la

echo -e "\n** Checking disk usage:\n"
df -h
