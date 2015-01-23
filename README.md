# Bootstrap Vagrant Ubuntu 14.04 Magento
A shell script to bootstrap a Vagrant machine based on Ubuntu Trusty 64 bit for developing Magento CE projects.

* Create a simple base Magento installation on a development machine
* Runs Ubuntu Trusty 14.04 LTS 64 bit
* Install tools like Composer and n98-magerun


## Prerequisites

Install on your machine:

* Vagrant
* VirtualBox

## Install

```
git clone https://github.com/wansoft/vagrant-ubuntu-trusty-magento.git
vagrant-ubuntu-trusty-magento
vagrant up
```

## Usage

From yuor machine point ypur browser to:

* Magento frontend: http://127.0.0.1:8080
* Magento admin panel: http://127.0.0.1:8080/admin
* PhpMyAdmin:  http://localhost:8080/phpmyadmin/
* Webmin: http://127.0.0.1:10001


Magento login: system / demo567

Access you virtual machine using 'vagrant ssh'.