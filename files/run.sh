#!/bin/sh

[ -f /run-pre.sh ] && /run-pre.sh

if [ ! -d /DATA/htdocs ] ; then
  chown -R nginx:nginx /DATA
  mkdir -p /DATA/htdocs
  chown nginx:www-data /DATA/htdocs
fi

# start php-fpm
mkdir -p /DATA/logs/php-fpm
php-fpm

# start nginx
mkdir -p /DATA/logs/nginx
mkdir -p /tmp/nginx
chown nginx /tmp/nginx
nginx
