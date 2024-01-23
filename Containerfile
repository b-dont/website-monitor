FROM php:fpm

COPY ./website-monitor /var/www/website-monitor

WORKDIR /var/www/website-monitor
