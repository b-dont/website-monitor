FROM ghcr.io/static-web-server/static-web-server:2-alpine as server

WORKDIR /

COPY . .

RUN apk update && apk add php busybox openrc --no-cache

RUN crontab cron

RUN ["crond", "-d", "8"]
