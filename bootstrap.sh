#!/usr/bin/env bash

apt-get update
apt-get -y upgrade
apt-get install -y git-all

version="1.5.3"
curl -O https://storage.googleapis.com/golang/go$version.linux-amd64.tar.gz
tar -xvf go$version.linux-amd64.tar.gz
mv go /usr/local

#apt-get install -y golang

# files dir is at /vagrant $HOME = 

export GOPATH=/vagrant/workspace
#export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

echo export GOPATH="/vagrant/workspace" >> /home/vagrant/.bashrc
#echo export PATH=$PATH:$GOROOT/bin:$GOPATH/bin >> /home/vagrant/.bashrc
echo export PATH=$PATH:/usr/local/go/bin >> /home/vagrant/.bashrc

source /home/vagrant/.bashrc

cd /vagrant/workspace/src/github.com

shopt -s extglob

#WARNING!!!!!!!!
rm -rf !(jezard)

go get github.com/gorilla/mux
go get github.com/gocql/gocql
