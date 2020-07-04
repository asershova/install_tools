#!/bin/bash
mkdir ~/distrib || echo "~/distrib already exists"
cd ~/distrib/
wget http://eddylab.org/software/hmmer/hmmer-3.3.tar.gz
tar -xvzf hmmer-3.3.tar.gz
cd hmmer-3.3
./configure --prefix $HOME/usr
make
make check
make install
echo 'export PATH=$PATH:$HOME/usr'>>~/.bashrc

