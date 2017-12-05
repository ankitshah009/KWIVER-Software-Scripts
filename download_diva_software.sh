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
git clone https://github.com/Kitware/kwiver
