#!/bin/bash 

tool_home=$(cd $(dirname $0) && pwd)
home=~

#Create directories
mkdir -p ~/{bin,local,workspace,etc}
mkdir -p ~/tmp/vim_bak

#Install ctags
mkdir -p ${tool_home}/src && cd ${tool_home}/src && wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
tar -zxvf ctags-5.8.tar.gz && cd ctags-5.8
./configure --prefix=${home}/local/ctags && make && make install

#Install vim plugin and conf
cd ${tool_home}/vim && cp -r .vim* ~/ 

#Install .screenrc
cd ${tool_home}/screen && cp .screenrc ~/
cat .bashrc >> ~/.bashrc
