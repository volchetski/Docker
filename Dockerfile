FROM ubuntu:22.04.3

RUN apt -y update
RUN apt install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/html

EXPOSE 80


CMD ["-g", "daemon off;", "nginx"]
