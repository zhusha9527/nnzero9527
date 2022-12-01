#!/bin/bash
cd /content
rm -f GGnn_train
rm -f GGnn
wget -c https://github.com/leedavid/leela-chess-to-Chinese-Chess/raw/master/lc0/libstdc++.so.6 
wget -c https://github.com/leedavid/leela-chess-to-Chinese-Chess/raw/master/lc0/GGnn_train
wget -c https://github.com/leedavid/leela-chess-to-Chinese-Chess/raw/master/lc0/GGnn
cp libstdc++.so.6 /usr/lib/x86_64-linux-gnu/
chmod 777 GGnn_train
chmod 777 GGnn
./GGnn_train --user '初见' --password '483600'
