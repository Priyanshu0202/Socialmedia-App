#! /usr/bin/bash

echo "Enter your username - "
read yourusername

echo "\nInstalling ......\n"

#sudo apt install build-essential autoconf automake libxmu-dev
#echo "deb http://in.archive.ubuntu.com/ubuntu bionic main universe" >> /etc/apt/sources.list
#sudo apt update
#sudo apt install gcc-4.8 g++-4.8
#tar zxvf ns-allinone-2.35.tar.gz

sed -i -e 's/@CC@/gcc-4.8/g' ~/ns-allinone-2.35/ns-2.35/Makefile.in
sed -i -e 's/@CXX@/g++-4.8/g' ~/ns-allinone-2.35/ns-2.35/Makefile.in
sed -i -e 's/@CPP@/g++-4.8/g' ~/ns-allinone-2.35/ns-2.35/Makefile.in

sed -i -e 's/@CC@/gcc-4.8/g' ~/ns-allinone-2.35/nam-1.15/Makefile.in
sed -i -e 's/@CXX@/g++-4.8/g' ~/ns-allinone-2.35/nam-1.15/Makefile.in
sed -i -e 's/@CPP@/g++-4.8/g' ~/ns-allinone-2.35/nam-1.15/Makefile.in

sed -i -e 's/@CC@/gcc-4.8/g' ~/ns-allinone-2.35/xgraph-12.2/Makefile.in
sed -i -e 's/@CXX@/g++-4.8/g' ~/ns-allinone-2.35/xgraph-12.2/Makefile.in
sed -i -e 's/@CPP@/g++-4.8/g' ~/ns-allinone-2.35/xgraph-12.2/Makefile.in

sed -i -e 's/@CC@/gcc-4.8/g' ~/ns-allinone-2.35/otcl-1.14/Makefile.in
sed -i -e 's/@CXX@/g++-4.8/g' ~/ns-allinone-2.35/otcl-1.14/Makefile.in
sed -i -e 's/@CPP@/g++-4.8/g' ~/ns-allinone-2.35/otcl-1.14/Makefile.in

sed -i -e 's/void eraseAll() { erase(baseMap::begin(), baseMap::end()); }/void eraseAll() { this->erase(baseMap::begin(), baseMap::end()); }/g' ~/ns-allinone-2.35/ns-2.35/linkstate/ls.h

cd ~/ns-allinone-2.35/
./install

cd ~/

echo "export PATH=$PATH:/home/$yourusername/ns-allinone-2.35/bin:/home/$yourusername/ns-allinone-2.35/tcl8.5.10/unix:/home/$yourusername/ns-allinone-2.35/tk8.5.10/unix" >> .bashrc
echo "export LD_LIBRARY_PATH=/home/$yourusername/ns-allinone-2.35/otcl-1.14:/home/$yourusername/ns-allinone-2.35/lib" >> .bashrc

source .bashrc
