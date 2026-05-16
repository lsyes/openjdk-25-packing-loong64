#!/bin/bash

git clone --depth 1 https://github.com/loongson/jdk25u.git ../jdk25u
mv debian ../jdk25u/
cd ../jdk25u
git clone --depth 1 https://github.com/google/googletest.git test/googletest
sudo apt update
sudo apt build-dep -y .
dpkg-buildpackage -b -us -uc -d
