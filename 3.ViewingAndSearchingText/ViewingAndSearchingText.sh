#!/usr/bin/env bash
set -euo pipefail

echo -e "\n**Creating the file 'fruits.txt' ...\n"

echo -e "apple\nbanana\ncherry\nAPPLE" > fruits.txt

echo -e "==> fruits.txt created successfully: \n"

tree

echo -e "\n\n**Text files found: \n"

find . -type f -name "*.txt"

echo -e "\n\n**Contents of fruits.txt: \n"

cat fruits.txt

echo -e "\n\n**Text search in fruits.txt: \n"

echo -e "==> Searching for 'apple' (case sensitive):"
echo -e "result: $(grep apple fruits.txt)"

echo -e "\n==> Searching for 'banana':"
echo -e "result: $(grep banana fruits.txt)"

echo -e "\n==> Searching for 'cherry':"
echo -e "result: $(grep cherry fruits.txt)"

echo -e "\n==> Searching for 'APPLE':"
echo -e "result: $(grep APPLE fruits.txt)"

echo -e "\n==> Searching for 'apple' (case insensitive): "
echo -e "result: $(grep -i apple fruits.txt | paste -sd', '-)"
