#! /bin/sh
sudo apt-get install -qq wine
sudo apt-get install -qq wget
sudo apt-get install -qq git
git clone https://github.com/cc65/cc65.git
cd cc65
make
export PATH=$PATH:$PWD
cd ..
cd xa
make
export PATH=$PATH:$PWD
cd ..

ls -la
echo $PATH

