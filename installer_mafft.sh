!#/bin/bash

wget https://mafft.cbrc.jp/alignment/software/mafft-7.471-with-extensions-src.tgz

tar xfvz mafft-7.471-with-extensions-src.tgz
cd mafft-4.471-with-extensions/core/
#vim Makefile
#From:
#PREFIX = /usr/local
#To:
#PREFIX = /home/your_home/somewhere
#From:
#BINDIR = $(PREFIX)/bin
#To:
#BINDIR = /home/your_home/bin (or elsewhere in your command-search path)

make clean
make
make install
