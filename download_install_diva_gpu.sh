#!/bin/bash
mkdir diva_gpu
cd diva_gpu
git clone https://github.com/Kitware/diva src
mkdir -p build/release
cd build/release
cmake ../../src/ -DCMAKE_BUILD_TYPE=Release -DDIVA_BUILD_WITH_CUDA=ON
make
