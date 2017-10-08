#! /bin/sh

cd osdk/ && unzip osdk_src.zip && cd osdk_src/osdk/main/common/ && make
cd ../xa/ && make && cp /home/travis/bin && chmod +x /home/travis/bin/xa
cd ../filepack/ && make && cp /home/travis/bin && chmod +x /home/travis/bin/filepack
echo $PATH

cd ../../../../

git clone https://github.com/cc65/cc65.git
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

