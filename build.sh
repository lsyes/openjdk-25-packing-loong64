#!/bin/bash
git clone --depth 1 https://github.com/loongson/jdk25u.git
cd jdk25u

git clone https://github.com/lsyes/openjdk-25-packing-loong64.git /tmp/openjdk-25-packing

mv /tmp/openjdk-25-packing/debian .

rm -rf /tmp/openjdk-25-packing

git clone --depth 1 https://github.com/google/googletest.git test/googletest

sudo apt update && sudo apt build-dep -y .
# 构建
dpkg-buildpackage -b -us -uc -d
