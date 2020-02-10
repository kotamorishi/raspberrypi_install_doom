#!/bin/sh
set -e
sudo apt-get install -y libsdl-mixer1.2-dev libsdl-net1.2-dev python-pil
wget https://www.chocolate-doom.org/downloads/3.0.0/chocolate-doom-3.0.0.tar.gz
tar xzf chocolate-doom-3.0.0.tar.gz
cd chocolate-doom-3.0.0.tar.gz
wget http://www.doomworld.com/3ddownloads/ports/shareware_doom_iwad.zip -O
./configure
make
sudo make install

echo 'chocolate-doom -iwad DOOM1.WAD'
