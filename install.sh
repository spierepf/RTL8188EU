#!/bin/bash

sudo apt-get install build-essential linux-headers-`uname -r` git

git submodule update --init --recursive
pushd rtl8188eu
make clean
make
sudo make install
sudo update-initramfs -u
sudo modprobe 8188eu
