#! /bin/sh

cd osdk/ && unzip osdk_src.zip && cd osdk_src/osdk/main/common/ && make
cd ../xa/ && make && cp xa /home/travis/bin && chmod +x /home/travis/bin/xa
cd ../filepack/ && make && cp filepack /home/travis/bin && chmod +x /home/travis/bin/filepack
echo $PATH

cd ../../../../

git clone https://github.com/cc65/cc65.git
cd cc65
make
ls -l
cp bin/cl65 /home/travis/bin && chmod +x /home/travis/bin/cl65
cp bin/ca65 /home/travis/bin && chmod +x /home/travis/bin/ca65
cp bin/cc65 /home/travis/bin && chmod +x /home/travis/bin/cc65
cp bin/ar65 /home/travis/bin && chmod +x /home/travis/bin/ar65
cp bin/ld65 /home/travis/bin && chmod +x /home/travis/bin/ld65
cd ..

git clone https://github.com/jedeoric/telemon.git
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

