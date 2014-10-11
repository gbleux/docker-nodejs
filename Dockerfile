# VERSION         0.0.1
# DOCKER-VERSION  1.2.0

FROM alpinelinux/base:latest

RUN apk add \
      --virtual docker-nodejs \
      --no-progress \
      --force \
      nodejs