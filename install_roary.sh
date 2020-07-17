#!/bin/bash
# assumption - cpan is already tuned
# run install_distroprefs.sh before!

git clone https://github.com/sanger-pathogens/Roary.git
cd Roary/
#  bash install_dependencies.sh 
echo 'export PATH=$PATH:$HOME/distrib/Roary/bin' >> ~/.bashrc
echo 'export PERL5LIB=$PERL5LIB:$HOME/lib' >> ~/.bashrc
cpan install Moose
cpan install Bio::Root::Test 
cpan install XML::DOM::XPath
cpan install Bio::Perl
cpan install Log::Log4perl
cpan install File::Which
cpan install Array::Utils
cpan install File::Grep
cpan install Text::CSV
cpan install Digest::MD5::File

echo "Re-login required (or just run new bash session"
