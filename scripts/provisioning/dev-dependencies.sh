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