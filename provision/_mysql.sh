#!/usr/bin/env bash
source _config.sh

# mysql setup

export DEBIAN_FRONTEND=noninteractive

apt-get -q -y install mysql-server-5.6
mysqladmin -u root password ${MYSQL_ROOT_PASSWORD}

sed -i "s/^bind-address.*/bind-address = 0.0.0.0/g" /etc/mysql/my.cnf

service mysql restart

update-rc.d mysql defaults

# other method
# /etc/init.d/mysql stop
# mysqld_safe --skip-grant-tables &
# mysql -u root -e "use mysql; UPDATE user SET Password=PASSWORD('root') WHERE User='root'; FLUSH PRIVILEGES;"
# /etc/init.d/mysql stop

# debconf-set-selections <<< 'mysql-server mysql-server/root_password password ${MYSQL_ROOT_PASSWORD}'
# debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password ${MYSQL_ROOT_PASSWORD}'