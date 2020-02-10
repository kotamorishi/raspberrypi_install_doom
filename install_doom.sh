#!/bin/sh
set -e
sudo apt-get install -y libsdl2-dev libsdl2-mixer-dev libsdl2-net-dev python-pil
wget https://www.chocolate-doom.org/downloads/3.0.0/chocolate-doom-3.0.0.tar.gz
tar xzf chocolate-doom-3.0.0.tar.gz
cd chocolate-doom-3.0.0
wget http://www.doomworld.com/3ddownloads/ports/shareware_doom_iwad.zip -O shareware_doom_iwad.zip
unzip shareware_doom_iwad.zip
./configure
make
sudo make install

echo 'how to run : chocolate-doom -iwad DOOM1.WAD'
