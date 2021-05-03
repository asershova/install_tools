#!/bin/bash

. settings.sh

prokka_root=${common_root}/bin

cd ${prokka_root}

cpan install Bio::SearchIO::hmmer3
cpan Bio::Perl

git clone https://github.com/tseemann/prokka.git
cd prokka/
bin/prokka --setupdb

echo "export PATH=${prokka_root}/prokka/bin:\$PATH" > ${common_root}/bashrc_common/prokka.sh
