#!/usr/bin/env bash

echo 'deb http://download.webmin.com/download/repository sarge contrib' >> /etc/apt/sources.list
echo 'deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib' >> /etc/apt/sources.list

cd /root
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc

apt-get update
apt-get -y install webmin

cd ${PROJECT_DIR}