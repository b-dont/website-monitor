FROM ghcr.io/static-web-server/static-web-server:2-alpine as server

WORKDIR /

COPY ./config/server.toml /config.toml

RUN apk update && apk add php busybox-initscripts openrc --no-cache
