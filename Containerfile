FROM php:8.2-fpm

COPY ./website-monitor /var/www/website-monitor

WORKDIR /var/www/website-monitor

RUN chmod 0644 cron \
&& chmod 0744 monitor.php \
&& touch /var/log/cron.log

RUN apt update \
&& apt upgrade -y \
&& apt install -y cron

CMD ["cron", "&&", "tail", "-f", "/var/log/cron.log"]
