FROM alpine:latest

COPY ./website-monitor /var/www/website-monitor
COPY ./httpd.conf /etc/httpd/conf/httpd.conf

WORKDIR /var/www/website-monitor

RUN apk update \
&& apk upgrade \
&& apk add --no-cache openrc apache2 php-apache2 apache2-utils

CMD ["httpd", "-D", "FOREGROUND"]
