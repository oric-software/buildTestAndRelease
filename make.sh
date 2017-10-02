#! /bin/sh

sudo apt-get install gcc -y && apt-get install make -y && apt-get install git -y && apt-get install wget && apt-get install subversion libapache2-svn -y
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

