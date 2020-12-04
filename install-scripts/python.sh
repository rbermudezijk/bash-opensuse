#!/bin/bash

#---- PYTHON 3.7 ----
#Sources: https://unix.stackexchange.com/questions/282429/sles12-how-to-install-zlib-package
#         https://tecadmin.net/install-python-3-7-on-ubuntu-linuxmint/
#         https://www.python.org/downloads/source/
#Libraries required by python
zypper -n install libz1 zlib-devel libffi-devel
#wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tar.xz
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tar.xz
tar xvf Python-3.9.0.tar.xz
cd Python-3.9.0/
./configure --enable-optimizations
make install
cd ..
rm -r Python-3.9.0
rm Python-3.9.0.tar.xz
#update pip tool
pip3 install --upgrade pip

#---- PIPENV ----
#Source: https://pipenv-es.readthedocs.io/es/latest/
pip3 install pipenv




