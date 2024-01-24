FROM php:8.2-fpm

COPY ./website-monitor /var/www/website-monitor

WORKDIR /var/www/website-monitor

RUN apt update \
&& apt upgrade -y \
&& apt install -y cron

RUN chmod 0644 cron \
&& chmod 0744 monitor.php \
&& crontab cron

CMD ["php", "-S", "0.0.0.0:9000", "-f", "./monitor.php"]
