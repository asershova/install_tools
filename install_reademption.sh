#!/bin/bash

. settings.sh || exit



#https://reademption.readthedocs.io/en/latest/installation.html#installing-on-a-fresh-ubuntu-system


cd ${common_distrib}
curl https://www.bioinf.uni-leipzig.de/Software/segemehl/downloads/segemehl-0.3.4.tar.gz > segemehl-0.3.4.tar.gz || exit
tar -xvzf segemehl-0.3.4.tar.gz || exit
(cd segemehl-0.3.4 && make all) || echo "ignoring faulty make"
cd ..
cp segemehl-0.3.4/segemehl.x ${common_bin} || echo "---------"
R --no-save << EOF
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install()
BiocManager::install(c("DESeq2"))
q()
EOF

#pip3 install --root=${common_root} READemption || exit

cat > ${common_root}/bashrc_common/reademption.sh << EOF
if which reademption > /dev/null; then 
echo "READemption is found"
else
echo "Installing READemption"
pip3 install READemption
fi
EOF
echo "Log out and log in to complete the installation"
