# Bootstrap Vagrant Ubuntu 14.04 Magento
A shell script to bootstrap a Vagrant machine based on Ubuntu Trusty 64 bit for developing Magento CE projects.

* Create a simple base Magento installation on a development machine
* Runs Ubuntu Trusty 14.04 LTS 64 bit
* Web server Apache
* Mysql v 5.6
* PHP v 5.x (5.5)
* Install tools like composer and n98-magerun
* File composer.json ready to use
* Install webmin for server administration

## Prerequisites

Install on your machine:

* Vagrant
* VirtualBox

## Install

```
git clone https://github.com/wansoft/vagrant-ubuntu-trusty-magento.git
cd vagrant-ubuntu-trusty-magento
vagrant up
```

You can optionally change some magento settings in '_config.sh' before provisioning.

## Usage

From yuor machine point your browser to:

* Magento frontend: http://127.0.0.1:8080
* Magento admin panel: http://127.0.0.1:8080/admin
* PhpMyAdmin:  http://localhost:8080/phpmyadmin/
* Webmin: http://127.0.0.1:10100


Magento login: admin / demo123

Webmin login: vagrant / vagrant

Access you virtual machine using 'vagrant ssh'.