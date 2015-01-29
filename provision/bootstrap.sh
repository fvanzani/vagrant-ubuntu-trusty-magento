#!/usr/bin/env bash

# change current directory to provision directory ($1 passed by Vagrantfile)
if [ -n "$1" ]; then
    cd $1
fi


# load configuration variables
source _config.sh

# create dirs
mkdir -p ${DOCUMENT_ROOT}

# update packages
apt-get update

# misc packages setup
cd ${PROVISION_DIR} && source _misc.sh

# apache setup
cd ${PROVISION_DIR} && source _apache.sh

# php setup
cd ${PROVISION_DIR} && source _php.sh

# mysql setup
cd ${PROVISION_DIR} && source _mysql.sh

# phpmyadmin setup
cd ${PROVISION_DIR} && source _phpmyadmin.sh

# development tools: composer, n98-magerun, ecc
cd ${PROVISION_DIR} && source _tools.sh

# magento setup
cd ${PROVISION_DIR} && source _magento.sh

# composer setup
cd ${PROVISION_DIR} && source _composer.sh

# webmin setup
#cd ${PROVISION_DIR} && source _webmin.sh