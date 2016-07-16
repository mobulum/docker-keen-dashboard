FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /usr/share/nginx/html/dashboard
COPY static/dashboard /usr/share/nginx/html/dashboard

EXPOSE 80