#!/bin/bash
apt-get update
yes | apt install wget
yes | apt install python
yes | apt install vim
yes | apt install git
yes | apt install cmake
#git clone https://github.com/ankitshah009/KWIVER-Software-Scripts
#bash install fletch_dependencies.sh
#bash download_diva_software.sh
#bash install_fletch.sh
yes | add-apt-repository ppa:saiarcot895/myppa
apt-get update
apt-get -y install apt-fast
yes | apt-get install python2.7-dev
yes | apt-get install python-six
yes | apt-get install python-numpy
#curl -O https://repo.continuum.io/archive/Anaconda2-5.0.1-Linux-x86_64.sh
#bash Anaconda2-5.0.1-Linux-x86_64.sh
#source ~/.bashrc
yes | apt install python-pip
pip install --upgrade pip
yes | apt install zip
# Needed for SMQTK
yes | apt-get install python-tk
yes | apt-get install cmake-curses-gui
pip install docutils
#Needed for Doxygen
yes | apt-get install doxygen
#needed for display
yes | apt-get install libxtst-dev
# Needed to have add-apt-repository command
#unset PYTHONPATH
yes | apt-get install software-properties-common python-software-properties
yes | apt-get install cmake-qt-gui
#source bashrc file back again
#sbashrc
# FFMPEG installtion is not fonud if pkg-config is not installed - for DIVA pipeline
yes | apt-get install pkg-config
#pylint also fails to be found and thus lets install it - Needed for open cv
yes | apt-get install pylint
#HDF5 is also not found during installtion
yes | apt-get install hdf5-tools h5utils
#Open CV issues during installation - Official open cv page dependencies needed
yes | apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
yes | apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
