#!/bin/bash
#Petit script pour démarrer tout le binz
#zf211105.1629


sudo apt update ; sudo apt-get install apt-transport-https ca-certificates -y ; sudo update-ca-certificates
git config --global credential.helper wincred

mkdir alex
cd alex
git clone https://gitlab.epfl.ch/javet/lh3.frontend.git
