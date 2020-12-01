#!/bin/bash

#
# cpan
# needed for roary
cpan install CPAN::Distroprefs

cd ~/.cpan/
rmdir prefs
git clone https://github.com/eserte/srezic-cpan-distroprefs.git
mv srezic-cpan-distroprefs prefs
echo "Re-login required (or just run new bash session"
