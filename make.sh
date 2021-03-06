#! /bin/sh

#rem sudo apt-get update -y -qq
#apt-get install php
#apt-get install php-curl

if [ -z "$1" ]; then
HOMEDIRBIN=/home/travis/bin/
echo Empty set it
else
echo HOMEDIRBIN defined from command line
HOMEDIRBIN=$1
fi

cd osdk/ && unzip osdk_src.zip && cd osdk_src/osdk/main/common/ && make
cd ../xa/ && make && cp xa $HOMEDIRBIN && chmod +x $HOMEDIRBIN/xa
cd ../filepack/ && make && cp filepack $HOMEDIRBIN && chmod +x $HOMEDIRBIN/filepack
ls -l Ym2Mym/ && ls -l Ym2Mym/source
cd ../Ym2Mym/ && make  && cp Ym2Mym $HOMEDIRBIN && chmod +x $HOMEDIRBIN/Ym2Mym
ls $HOMEDIRBIN
echo $PATH

cd ../../../../

git clone https://github.com/cc65/cc65.git
cd cc65
# make output is hidden because we are sure that cc65 compiles
make > /dev/null
cp bin/cl65 $HOMEDIRBIN && chmod +x $HOMEDIRBIN/cl65
cp bin/ca65 $HOMEDIRBIN && chmod +x $HOMEDIRBIN/ca65
cp bin/cc65 $HOMEDIRBIN && chmod +x $HOMEDIRBIN/cc65
cp bin/ar65 $HOMEDIRBIN && chmod +x $HOMEDIRBIN/ar65
cp bin/ld65 $HOMEDIRBIN && chmod +x $HOMEDIRBIN/ld65
cp bin/co65 $HOMEDIRBIN && chmod +x $HOMEDIRBIN/co65
cd ..
# If orix folder is already here, it means that we build orix, we don't need to clone it

if [ ! -d "../../../orix/" ]; then
mkdir ../../../orix/
git clone https://github.com/oric-software/orix.git ../../../orix/ 
fi

git clone https://github.com/assinie/md2hlp.git
cp md2hlp/src/md2hlp.py $HOMEDIRBIN
cp md2hlp/src/md2hlp.cfg $HOMEDIRBIN






