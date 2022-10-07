#!/bin/bash
add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt update
apt install gcc-9 g++-9
cd /usr/bin/ && unlink gcc
cd /usr/bin/ && ln -s gcc-9 gcc
cd /usr/bin/ && unlink g++
cd /usr/bin/ && ln -s g++-9 g++
gcc -v

wget -c https://github.com/zhusha9527/nnzero9527/raw/main/chujian_train.o
wget -c https://github.com/zhusha9527/nnzero9527/raw/main/chujian_date.o

chmod 777 chujian_train.o
chmod 777 chujian_date.o
./chujian_train.o --user 'tianya' --password 'wutao12345' --lc0name 'chujian_date.o'