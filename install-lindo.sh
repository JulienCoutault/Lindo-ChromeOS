#!/bin/bash

version='2.6.2'

if [ -z $1 ]; then
    $1 = 'a'
fi

if [ $1 == 'beta' ]; then
    version='2.6.0-beta.13'
fi

echo "Downloading lindo ${version}"

# Download lindo
wget https://github.com/prixe/lindo/releases/download/v${version}/lindo-${version}.tar.gz
tar -xf lindo-${version}.tar.gz
rm -v lindo-${version}.tar.gz

# Install require libs
sudo apt install libnss3 -y

if [ $1 == 'beta' ]; then
    if [ -f "lindo-beta" ]; then
        # shotcut already exist
        rm lindo-beta
    fi
    ln -s lindo-${version}/Lindo lindo-beta
else
    if [ -f "lindo" ]; then
        # shotcut already exist
        rm lindo
    fi
    ln -s lindo-${version}/Lindo lindo
fi

echo ""
echo "--------------------------------------------------"
echo "Lindo ${version} was downloaded"
if [ $1 == 'beta' ]; then
    echo "To play write : ./lindo-beta"
else
    echo "To play write : ./lindo"
fi
