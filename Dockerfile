FROM ubuntu:22.04.3

RUN apt update
RUN apt install nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["-g", "daemon off;", "nginx"]
