#!/bin/bash

echo "Updating Centos ..."
sudo yum -y update

echo "Install some dependencies..."
sudo yum -y install yum-utils bzip2 bzip2-devel wget curl tar gcc gcc-c++

sudo yum -y install epel-release

echo "Install Develpment Tools ..."
sudo yum -y groupinstall "Development tools"

echo "Install NodeJS Latest stable ..."
cd opt
sudo wget http://nodejs.org/dist/v4.2.1/node-v4.2.1.tar.gz 
sudo tar zxf node-v4.2.1.tar.gz 
cd node-v4.2.1 
sudo ./configure --prefix=/usr
sudo make 
sudo make install 
node -v 
npm -v

echo "Install Yoeman..."
sudo npm install -g yo

echo "Install Bower..."
sudo npm install -g bower

echo "Install Grunt ..."
sudo npm install -g grunt-cli

echo "Install Gulp ..."
sudo npm install -g gulp

echo "Install Generator web ..."
sudo npm install -g generator-webapp

echo "Install Angular Generator ..."
sudo npm install -g generator-angular

if [ ! -f ~/.git-prompt.sh ] 
then

    echo "Fix dependencies with github and look&feel terminal ..."

    cd /tmp
    wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

    echo "Set up file in user home.."
    mv git-prompt.sh ~/.git-prompt.sh

    echo "Update user bash profile..."
    echo "source ~/.git-prompt.sh" >> ~/.bash_profile

fi

echo "Install VIM & nano ..."
sudo yum -y install vim nano