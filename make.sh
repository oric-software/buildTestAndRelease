#! /bin/sh
sudo apt-get install -qq git
git clone https://github.com/cc65/cc65.git
cd cc65
make >> output_cc65.log
export PATH=$PATH:$PWD
cd ..
cd xa
make
export PATH=$PATH:$PWD
cd ..
ls -la
echo $PATH

