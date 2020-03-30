#!/bin/bash

# Download lindo 2.4.0
wget https://github.com/prixe/lindo/releases/download/v2.4.0/lindo-2.4.0.tar.gz
tar -xf lindo-2.4.0.tar.gz

# Install require libs
sudo apt-get install libssl1.1.0 libssl-dev -y
sudo ln -s /lib/x86_64-linux-gnu/libssl.so /usr/lib/libssl.so.10
sudo apt install libnss3 -y

ln -s lindo-2.4.0/Lindo lindo
