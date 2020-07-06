#!/bin/bash
mkdir ~/distrib || echo "~/distrib already exists"
cd ~/distrib/
git clone https://github.com/Sung-Huan/ANNOgesic.git
cd ANNOgesic/bin
ln -s ../annogesiclib .
echo 'export PATH=$PATH:$HOME/distrib/ANNOgesic/bin' >> ~/.bashrc
