#! /bin/sh

cd osdk/ && unzip osdk_src.zip && cd osdk/common/ && make
cd osdk/ &&  cd osdk/xa/ && make
cd osdk/ &&  cd osdk/filepack/ && make

#sudo apt-get install gcc -y && apt-get install make -y && apt-get install git -y
#git clone https://github.com/cc65/cc65.git
#cd cc65
#make >> output_cc65.log
#export PATH=$PATH:$PWD
#cd ..
#cd xa
#make
#export PATH=$PATH:$PWD
#cd ..
#ls -la
#echo $PATH

