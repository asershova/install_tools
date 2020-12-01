!#/bin/bash
wget ftp://emboss.open-bio.org/pub/EMBOSS/EMBOSS-6.6.0.tar.gz

tar -xvzf EMBOSS-6.6.0.tar.gz 
cd EMBOSS-6.6.0/
./configure --prefix=/home/anna/usr
make
make install
