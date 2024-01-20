FROM php:apache

COPY website-monitor /var/www/website-monitor
COPY status.brandont.dev /etc/apache2/sites-enabled/status.brandont.dev.conf
