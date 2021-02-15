#!/bin/bash
# Pass in latest i3-wm deb

git clone https://github.com/Airblader/i3 i3-gaps
mkdir i3-gaps/build
cd i3-gaps/build
meson ..
ninja
cd ../..
dpkg-deb -R $1 i3-gaps-deb
cp i3-gaps/build/i3 i3-gaps-deb/usr/bin
echo Modify DEBIAN/postinst and DEBIAN/control
echo Then run: dpkg-deb -b i3-gaps-deb i3-gaps-version.deb
