#!/bin/bash
mv download fletch.tgz
wget https://data.kitware.com/api/v1/file/599c39468d777f7d33e9cbe5/download
mv download fletch.tgz
tar -xvzf fletch.tgz
mkdir compressed
mv fletch.tgz compressed
git clone https://github.com/Kitware/SMQTK
git clone https://github.com/Kitware/sprokit
git clone https://github.com/Kitware/maptk
git clone https://github.com/Kitware/VisCL
git clone https://github.com/Kitware/vibrant
git clone https://github.com/Kitware/kwant
mkdir kwiver
cd kwiver
git clone https://github.com/Kitware/kwiver src
mkdir -p build/release
cd build/release
cmake ../../src/ -DCMAKE_BUILD_TYPE=Release -Dfletch_DIR:PATH=/home/ankit/KWIVER-Software-Scripts/fletch/build/rel/ -DKWIVER_ENABLE_ARROWS:BOOL=ON -DKWIVER_ENABLE_C_BINDINGS:BOOL=ON -DKWIVER_ENABLE_EXTRAS:BOOL=ON -DKWIVER_ENABLE_LOG4CPLUS:BOOL=ON -DKWIVER_ENABLE_PROCESSES:BOOL=ON -DKWIVER_ENABLE_PYTHON:BOOL=ON -DKWIVER_ENABLE_SPROKIT:BOOL=ON -DKWIVER_ENABLE_TOOLS:BOOL=ON -DKWIVER_USE_BUILD_TREE:BOOL=ON
make -j16
