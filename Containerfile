FROM php:8.2-fpm

COPY ./website-monitor /var/www/website-monitor

WORKDIR /var/www/website-monitor

CMD ["php", "-S", "0.0.0.0:9000", "-f", "./monitor.php"]
