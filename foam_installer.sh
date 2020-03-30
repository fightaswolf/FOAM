#!/bin/bash
sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"
add-apt-repository http://dl.openfoam.org/ubuntu
apt-get update
apt-get install openfoam6
apt-get install build-essential
echo ". /opt/openfoam6/etc/bashrc" >> $HOME/.bashrc
. $HOME/.bashrc
simpleFoam -help
echo "export DISPLAY=:0" >> ${HOME}/.bashrc
. $HOME/.bashrc
apt-get install gedit gedit-plugins
apt-get install gnuplot gnuplot-x11 gnuplot-doc libgd-tools
