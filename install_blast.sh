#!/bin/bash
if [! -d "$1" ]; then 
	echo "No directory $1"
	exit
fi
wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.10.1/ncbi-blast-2.10.1+-src.tar.gz
tar -xvzf ncbi-blast-2.10.1+-src.tar.gz
cd ncbi-blast-2.10.1+-src
cd c++
./configure --prefix=$1
cd ReleaseMT/build
make all_r
