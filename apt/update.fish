#!/bin/fish

set pkg "Packages"

dpkg-scanpackages deb/ > $pkg
if test -e "$pkg.bz2"
    rm "$pkg.bz2"
end
bzip2 $pkg
