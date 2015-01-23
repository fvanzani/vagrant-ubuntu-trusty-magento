#!/usr/bin/env bash

# php setup

apt-get install -y php5 php5-curl php5-mcrypt php5-gd php5-mysql php5-memcache php5-mysql
php5enmod mcrypt

sed -i 's/memory_limit = .*/memory_limit = 512M/' /etc/php5/apache2/php.ini
sed -i 's/max_execution_time = .*/max_execution_time = 300/' /etc/php5/apache2/php.ini

service apache2 reload