#!/bin/bash
mkdir ~/distrib || echo "~/distrib already exists"
cd ~/distrib/
git clone https://github.com/weizhongli/cdhit.git
cd cdhit/
make
echo 'export PATH=$PATH:$HOME/distrib/cdhit'>>~/.bashrc
