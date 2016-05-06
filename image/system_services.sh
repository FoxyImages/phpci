#!/bin/bash
set -e
source /build/buildconfig
set -x

$minimal_apt_get_install beanstalkd git

mkdir /var/www/.ssh
ssh-keyscan -t rsa bitbucket.org >> /var/www/.ssh/known_hosts
ssh-keyscan -t rsa github.com >> /var/www/.ssh/known_hosts

cd /var/www
chown www-data:root .
composer create-project block8/phpci phpci --no-dev

cd /var/www/phpci
cp /build/config/*.php .
chmod 777 PHPCI/build

rm /etc/nginx/sites.d/default
cp /build/config/nginx-site.conf /etc/nginx/sites.d/phpci
rm /etc/php/7.0/fpm/pool.d/www.conf
cp /build/config/php-pool.conf /etc/php/7.0/fpm/pool.d/phpci.conf

mkdir /etc/service/beanstalkd
mkdir /etc/service/phpci-worker
cp /build/init/beanstalkd /etc/service/beanstalkd/run
cp /build/init/phpci-worker /etc/service/phpci-worker/run
cp /build/bin/phpci /usr/local/bin/phpci
