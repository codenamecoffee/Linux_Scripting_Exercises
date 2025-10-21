#!/usr/bin/env bash
set -euo pipefail

echo -e "\n** Checking if a practice file already exists: \n"
if [ -f prueba.txt ]; then
   echo -e "The file exists. Deleting it...\n"
   sudo rm prueba.txt
fi

echo -e "\n** Creating a file to start the tests...\n"
touch prueba.txt

echo -e "File prueba.txt created. \n"
ls -l prueba.txt

echo -e "\n\n** Changing file properties to 'read-only'...\n"
chmod 444 prueba.txt
ls -l prueba.txt

echo -e "\n\n** Changing file owner and group to 'root'...\n"
sudo chown root:root prueba.txt 
ls -l prueba.txt

echo -e "\n\n** Reverting file permissions and ownership...\n"
sudo chown "$USER":"$USER" prueba.txt
chmod 644 prueba.txt

echo -e "(Otherwise the file literally becomes untouchable).\n"
ls -l prueba.txt
echo

