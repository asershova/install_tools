#!/bin/bash
mkdir ~/distrib || echo "~/distrib already exists"
cd ~/distrib/
git clone https://github.com/BackofenLab/IntaRNA.git
cd IntaRNA/
bash ./autotools-init.sh
./configure --prefix=$HOME/usr/bin --with-vrna=$HOME/usr/bin/ViennaRNA --with-boost=$HOME/usr
make install prefix=$HOME/usr

