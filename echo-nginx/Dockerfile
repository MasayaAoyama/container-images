FROM nginx:alpine

ENV NGINX_PORT=80

COPY default.conf /etc/nginx/conf.d/
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
