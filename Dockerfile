FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /usr/share/nginx/html/dashboard
COPY static/dashboard /usr/share/nginx/html/dashboard
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8081