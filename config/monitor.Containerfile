FROM php:8.2-fpm

VOLUME ["/var/www/website-monitor/monitors"]

COPY ./website-monitor /var/www/website-monitor
