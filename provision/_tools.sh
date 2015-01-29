#!/usr/bin/env bash
source _config.sh

cd /usr/local/bin

 wget -q --no-check-certificate https://raw.githubusercontent.com/colinmollenhour/modman/master/modman
 wget -q --no-check-certificate https://getcomposer.org/composer.phar
 wget -q --no-check-certificate https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
 wget -q --no-check-certificate https://raw.githubusercontent.com/netz98/n98-magerun/master/n98-magerun.phar

 chmod +x  modman composer.phar wp-cli.phar n98-magerun.phar

 ln -s composer.phar composer
 ln -s wp-cli.phar wp
 ln -s n98-magerun.phar mr

cd -