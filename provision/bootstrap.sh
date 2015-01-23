#!/usr/bin/env bash

# change current directory to provision directory ($1 passed by Vagrantfile)
if [ -n "$1" ]; then
    cd $1
    exit
fi

# load configuration variables
source _config.sh

# folders setup
mkdir -p ${DOCUMENT_ROOT}

# update packages
apt-get update

# misc packages setup
source _misc.sh

# apache setup
source _apache.sh

# php setup
source _php.sh

# mysql setup
source _mysql.sh

# phpmyadmin setup
source _phpmyadmin.shphpmyadmin

# development tools: composer, n98-magerun, ecc
source _tools.sh

# magento setup
source _magento.sh

# composer setup
source _composer.sh

# webmin setup
source _webmin.sh