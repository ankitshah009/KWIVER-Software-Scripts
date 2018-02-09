# KWIVER-Software-Scripts

Get a fresh checkout version of docker - ubuntu 16.04

Assuming that no software is installed in this docker - here are the list of steps which we need to run. 

Run the following commands to get started. 

docker run -it --name <your favourite string>  -v <ANY specific mount path you desire> -d ubuntu

docker start <container id>

docker attach <container id>

apt update

Now you have apt updated within the docker image

Run the following - 

yes | apt install git vim

git clone https://github.com/ankitshah009/KWIVER-Software-Scripts

bash KWIVER-Software-Scripts/fletch_dependencies.sh
bash KWIVER-Software-Scripts/download_install_diva.sh

### This should have Diva installed. 
