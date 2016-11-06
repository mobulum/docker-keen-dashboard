# Nginx for static files server with basic auth
# WEBSITE https://github.com/mobulum/docker-keen-dashboard
# VERSION 1.1.0

FROM nginx
MAINTAINER Mateusz Stępniak "contact@mobulum.com"

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /usr/share/nginx/html/dashboard
COPY static/dashboard /usr/share/nginx/html/dashboard
COPY default.conf /etc/nginx/conf.d/default.conf
COPY dashboard_htpasswd /etc/nginx/conf.d/dashboard_htpasswd

EXPOSE 8081
