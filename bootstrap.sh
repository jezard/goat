#!/usr/bin/env bash


#see http://ask.xmodulo.com/install-go-language-linux.html
yum install golang -y
yum install nano -y
mkdir $HOME/workspace
echo export GOPATH="$HOME/workspace" >> ~/.bashrc
source ~/.bashrc
# wget https://storage.googleapis.com/golang/go$VERSION.$OS-$ARCH.tar.gz
# tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
# export PATH=$PATH:/usr/local/go/bin
