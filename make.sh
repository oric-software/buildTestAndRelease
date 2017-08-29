#! /bin/sh
sudo apt-get install -qq wine
sudo apt-get install -qq wget
mkdir osdk && cd osdk    
wget http://osdk.defence-force.org/files/osdk_1_10.zip
unzip -o osdk_1_10.zip
cd ..
mkdir cc65 && cd cc65
wget http://sourceforge.net/projects/cc65/files/cc65-snapshot-win32.zip
unzip -o cc65-snapshot-win32.zip
cd ..
ls -la
ls -la osdk
ls -la cc65
