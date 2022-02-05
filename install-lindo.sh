#!/bin/bash

if [ -z $1 ]; then
    # Get last version
    version=$(curl --silent "https://api.github.com/repos/prixe/lindo/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
    version="${version:1}"
else
    # Get given version
    version=$1
fi


echo "Downloading lindo ${version}"

# Download lindo
wget https://github.com/prixe/lindo/releases/download/v${version}/lindo-${version}.tar.gz
tar -xf lindo-${version}.tar.gz
rm -v lindo-${version}.tar.gz

# Install require libs
sudo apt install libnss3 -y

if [ -f "lindo" ]; then
    # shotcut already exist
    rm lindo
fi
ln -s lindo-${version}/Lindo lindo

echo ""
echo "--------------------------------------------------"
echo "Lindo ${version} was downloaded"
echo "To play write : ./lindo"
