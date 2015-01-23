#!/usr/bin/env bash

# create magento db
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DB_NAME};"

cd ${PROJECT_DIR}

rm -rf ${HTDOCS_DIR}

wget http://www.magentocommerce.com/downloads/assets/${MAGENTO_VERSION}/magento-${MAGENTO_VERSION}.tar.gz
tar xfz magento-${MAGENTO_VERSION}.tar.gz
mv magento  ${HTDOCS_DIR}
rm -r magento

cd ${DOCUMENT_ROOT}

php install.php --license_agreement_accepted 'yes' --locale 'it_IT' --timezone 'Europe/Rome' --db_host 'localhost' --db_name 'magentodb' --db_user 'root' --db_pass '${MYSQL_ROOT_PASSWORD}' --url 'http://127.0.0.1:8080/' --use_rewrites 'yes' --use_secure 'no' --secure_base_url '' --use_secure_admin 'no' --admin_username 'system' --admin_lastname 'Doe' --admin_firstname 'John' --admin_email 'fabrizio2@archimedianet.it' --admin_password 'demo567' --session_save 'files' --admin_frontname 'admin' --backend_frontname 'admin' --default_currency 'EUR' --skip_url_validation 'yes'
n98-magerun.phar dev:symlinks --on --global
mv errors/local.xml.sample  errors/local.xml

cd ${PROJECT_DIR}