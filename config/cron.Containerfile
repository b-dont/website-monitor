FROM php:8.2-fpm

COPY ./website-monitor /var/www/website-monitor

RUN apt update \
&& apt upgrade -y \
&& apt install -y cron \
&& chmod 0644 /var/www/website-monitor/web-monitor-cron \
&& chmod 0744 /var/www/website-monitor/monitor.php \
&& touch /var/log/cron.log \
&& crontab /var/www/website-monitor/web-monitor-cron
