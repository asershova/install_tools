#!/bin/bash
if [ ! -d "$1" ]; then 
	echo "No directory $1"
	exit
fi
blast=ncbi-blast-2.10.1+-src.tar.gz

if [ ! -f "$blast" ]; then
       wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.10.1/$blast
fi
if [ -d "${blast%%.tar.gz}" ]; then
	rm -rf "${blast%%.tar.gz}"
fi
tar -xvzf $blast
cd ${blast%%.tar.gz}
cd c++
./configure --prefix=$1
cd ReleaseMT/build
make all_r
cp -rf ../bin/* $1
