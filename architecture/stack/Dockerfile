FROM centos

#Update centos
RUN yum -y update

#Install some dependencies
RUN yum -y install yum-utils bzip2 bzip2-devel wget curl tar gcc gcc-c++

#Update 
RUN yum -y install epel-release

#Install Develpment Tools
RUN yum -y groupinstall "Development tools"

#Install NodeJS Latest
RUN cd /opt \ 
	&& wget http://nodejs.org/dist/v4.2.1/node-v4.2.1.tar.gz \ 
	&& tar zxf node-v4.2.1.tar.gz \
	&& cd node-v4.2.1 \
	&& ./configure --prefix=/usr/local \
	&& make \
	&& make install \
	&& node -v \
	&& npm -v

####Update NPM2 to NPM3
####RUN npm install -g npm

#Setup Yoeman settings folder https://github.com/yeoman/yeoman.github.io/issues/282
RUN mkdir -p /root/.config/configstore && chmod g+rwx /root /root/.config /root/.config/configstore

#Install Yoeman
RUN npm install -g yo

#Install Bower
RUN npm install -g bower

#Install Grunt
RUN npm install -g grunt-cli

#Install Gulp
RUN npm install -g gulp

#Install Generator web
RUN npm install -g generator-webapp

#Install Angular Generator
RUN npm install -g generator-angular


