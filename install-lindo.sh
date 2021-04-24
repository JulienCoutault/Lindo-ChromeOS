#!/bin/bash

# Download lindo 2.5.4
wget https://github.com/prixe/lindo/releases/download/v2.5.4/lindo-2.5.4.tar.gz
tar -xf lindo-2.5.4.tar.gz
rm -v lindo-2.5.4.tar.gz

# Install require libs
sudo apt install libnss3 -y

ln -s lindo-2.5.4/Lindo lindo

echo ""
echo "--------------------------------------------------"
echo "To play write : ./lindo"
