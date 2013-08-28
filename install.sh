#!/bin/bash 

tool_home=$(cd $(dirname $0) && pwd)

#install vim plugin and conf
cd ${tool_home}/vim && cp -r .vim* ~/ 

#install .screenrc
cd ${tool_home}/screen && cp .screenrc ~/
