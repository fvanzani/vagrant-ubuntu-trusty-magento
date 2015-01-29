#!/usr/bin/env bash
source _config.sh

echo "********** MAGENTO **********";

# create magento db
echo "CREATE MAGENTO DB..."
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DB_NAME};"

cd ${PROJECT_DIR}
rm -rf ${HTDOCS_DIR}

echo "DOWNLOADING..."

if [ ! -f magento-${MAGENTO_VERSION}.tar.gz ]; then
    wget -q http://www.magentocommerce.com/downloads/assets/${MAGENTO_VERSION}/magento-${MAGENTO_VERSION}.tar.gz
fi

echo "UNPACKING..."

tar xfz magento-${MAGENTO_VERSION}.tar.gz
mv magento ${HTDOCS_DIR}

echo "INSTALLING..."

cd ${HTDOCS_DIR}
php install.php --license_agreement_accepted 'yes' --locale "${MAGENTO_LOCALE}" --timezone "${MAGENTO_TIMEZONE}" --db_host 'localhost' --db_name "${MYSQL_DB_NAME}" --db_user 'root' --db_pass "${MYSQL_ROOT_PASSWORD}" --url 'http://127.0.0.1:8080/' --use_rewrites 'yes' --use_secure 'no' --secure_base_url '' --use_secure_admin 'no' --admin_username "${MAGENTO_ADMIN_USERNAME}" --admin_lastname 'Doe' --admin_firstname 'John' --admin_email 'admin@example.com' --admin_password "${MAGENTO_ADMIN_PASSWORD}" --session_save 'files' --admin_frontname 'admin' --backend_frontname 'admin' --default_currency "${MAGENTO_DEFAULT_CURRENCY}" --skip_url_validation 'yes'


echo "DEVELOPMENT SETTINGS..."

n98-magerun.phar dev:symlinks --on --global
mv errors/local.xml.sample  errors/local.xml

cd ${PROJECT_DIR}