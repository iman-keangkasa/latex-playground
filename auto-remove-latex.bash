#!/bin/bash
sudo apt-get purge texlive*
sudo rm -rf /usr/local/texlive/*
rm -rf ~/.texlive*
sudo rm -rf /usr/local/share/texmf
sudo rm -rf /var/lib/texmf
sudo rm -rf /etc/texmf
sudo apt-get remove tex-common --purge
rm -rf ~/.tex*
find -L /usr/local/bin -lname /usr/local/texlive/*/bin/* | xargs rmi
#after finishing removal and installing all texlive 
#set the path e.g.: export /usr/local/texlive/2018/bin/x86_64-linux:$PATH
