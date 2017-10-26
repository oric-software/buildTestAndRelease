#! /bin/sh

#rem sudo apt-get update -y -qq
#apt-get install php
#apt-get install php-curl

cd osdk/ && unzip osdk_src.zip && cd osdk_src/osdk/main/common/ && make
cd ../xa/ && make && cp xa /home/travis/bin && chmod +x /home/travis/bin/xa
cd ../filepack/ && make && cp filepack /home/travis/bin && chmod +x /home/travis/bin/filepack
cd ../Ym2Mym/ && make && ls -l Ym2Mym/ && cp Ym2Mym/ym2mym /home/travis/bin && chmod +x /home/travis/bin/ym2mym
echo $PATH

cd ../../../../

git clone https://github.com/cc65/cc65.git
cd cc65
# make output is hidden because we are sure that cc65 compiles
make > /dev/null
cp bin/cl65 /home/travis/bin && chmod +x /home/travis/bin/cl65
cp bin/ca65 /home/travis/bin && chmod +x /home/travis/bin/ca65
cp bin/cc65 /home/travis/bin && chmod +x /home/travis/bin/cc65
cp bin/ar65 /home/travis/bin && chmod +x /home/travis/bin/ar65
cp bin/ld65 /home/travis/bin && chmod +x /home/travis/bin/ld65
cp bin/co65 /home/travis/bin && chmod +x /home/travis/bin/co65
cd ..
# If telemon folder is already here, it means that we build telemon, we don't need to clone it
if [ ! -d "../../../telemon/" ]; then
mkdir ../../../telemon/
git clone https://github.com/jedeoric/telemon.git ../../../telemon/ 
fi
