#!/usr/bin/env bash

debconf-set-selections <<< 'phpmyadmin phpmyadmin/dbconfig-install boolean true'
debconf-set-selections <<< 'phpmyadmin phpmyadmin/app-password-confirm password ${MYSQL_ROOT_PASSWORD}'
debconf-set-selections <<< 'phpmyadmin phpmyadmin/mysql/admin-pass password ${MYSQL_ROOT_PASSWORD}'
debconf-set-selections <<< 'phpmyadmin phpmyadmin/mysql/app-pass password ${MYSQL_ROOT_PASSWORD}'
debconf-set-selections <<< 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2'

apt-get install -y phpmyadmin