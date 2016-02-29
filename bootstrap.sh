#!/usr/bin/env bash

apt-get install -y git-all
apt-get install -y golang

# files dir is at /vagrant $HOME = /root


export GOPATH=/vagrant/workspace
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

echo export GOPATH="/vagrant/workspace" >> /home/vagrant/.bashrc
echo export PATH=$PATH:$GOROOT/bin:$GOPATH/bin >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc

cd /vagrant/workspace/src/github.com

shopt -s extglob

#WARNING!!!!!!!!
rm -rf !(jezard)

go get github.com/gorilla/mux
go get github.com/gocql/gocql
