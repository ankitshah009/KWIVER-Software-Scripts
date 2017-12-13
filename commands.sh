#!/bin/bash
apt-get update
yes | apt install python
yes | apt install vim
yes | apt install git
yes | apt install cmake
git clone https://github.com/ankitshah009/KWIVER-Software-Scripts
bash install fletch_dependencies.sh
bash download_diva_software.sh
bash install_fletch.sh
yes | add-apt-repository ppa:saiarcot895/myppa
apt-get update
apt-get -y install apt-fast
yes | apt-get install python2.7-dev
