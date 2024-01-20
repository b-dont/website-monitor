FROM alpine

WORKDIR /
COPY . .

RUN apk update && apk add php busybox openrc nginx --no-cache && crontab cron

RUN ["crond", "-d", "8"]
