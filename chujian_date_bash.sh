#!/bin/bash
cp /opt/nvidia/nsight-systems/2022.1.3/host-linux-x64/libstdc++.so.6 /usr/lib/x86_64-linux-gnu/

cd /content
rm -f chujian_train.o
rm -f chujian_date.o

wget -c https://github.com/zhusha9527/nnzero9527/raw/main/chujian_train.o
wget -c https://github.com/zhusha9527/nnzero9527/raw/main/chujian_date.o

chmod 777 chujian_train.o
chmod 777 chujian_date.o
./chujian_train.o --user '初见' --password '483600' --lc0name 'chujian_date.o'