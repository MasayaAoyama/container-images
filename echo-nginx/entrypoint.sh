#!/bin/sh
sed -i "s|__NGINX_PORT__|${NGINX_PORT}|g" /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
