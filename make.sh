#! /bin/sh
sudo apt-get install -qq git
git clone https://github.com/cc65/cc65.git
cd cc65
make
export PATH=$PATH:$PWD
cd ..
cd xa
make all
export PATH=$PATH:$PWD
cd ..
ls -la
echo $PATH

