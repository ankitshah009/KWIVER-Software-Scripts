#!/bin/bash
mkdir diva
cd diva
git clone https://github.com/Kitware/diva src
mkdir -p build/release
cd build/release
cmake ../../src/ -DCMAKE_BUILD_TYPE=Release
make -j16
