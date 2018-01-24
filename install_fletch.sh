#!/bin/bash
mkdir fletch
cd fletch/
git clone https://github.com/Kitware/fletch.git src
mkdir -p build/rel
cd build/rel
cmake -DCMAKE_BUILD_TYPE=Release -Dfletch_ENABLE_ALL_PACKAGES=ON -Dfletch_ENABLE_PYTHON=ON ../../src
