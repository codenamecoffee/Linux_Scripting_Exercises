#!/usr/bin/env bash
set -euo pipefail

echo -e "\n** Creating a file..."

touch nuevoArchivo.txt

echo -e "\n ==> created: 'nuevoArchivo.txt'\n"

tree

echo -e "\n\n ** Copying file... \n"

cp nuevoArchivo.txt copiaNuevoArchivo.txt

echo -e "==> created: 'copiaNuevoArchivo.txt'\n"

tree

echo -e "\n\n** Creating the directory 'backup'...\n"

mkdir -p backup 

echo -e " ==> created: 'backup'\n"

tree

echo -e "\n\n** Moving file 'copiaNuevoArchivo.txt' to 'backup'...\n"

mv copiaNuevoArchivo.txt backup/

tree

echo -e "\n\n** Deleting original file: nuevoArchivo.txt\n"

rm nuevoArchivo.txt

echo -e "==> nuevoArchivo.txt deleted.\n"

tree
