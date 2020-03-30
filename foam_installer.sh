#!/bin/bash
sudo sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"
sudo add-apt-repository http://dl.openfoam.org/ubuntu
sudo apt-get update
sudo apt-get install openfoam6
sudo apt-get install build-essential
echo ". /opt/openfoam6/etc/bashrc" >> $HOME/.bashrc
. $HOME/.bashrc
simpleFoam -help
echo "export DISPLAY=:0" >> ${HOME}/.bashrc
. $HOME/.bashrc
sudo apt-get install gedit gedit-plugins
sudo apt-get install gnuplot gnuplot-x11 gnuplot-doc libgd-tools
