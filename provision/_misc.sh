#!/usr/bin/env bash
source _config.sh

apt-get install -y imagemagick
apt-get install -y curl
apt-get install -y git
apt-get install -y subversion
apt-get install -y mcrypt
apt-get install -y htop

apt-get install -y nodejs
apt-get install -y npm

npm install -g bower grunt-cli

#apt-get install -y openssl