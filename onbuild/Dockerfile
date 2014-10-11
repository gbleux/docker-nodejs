# VERSION         0.0.1
# DOCKER-VERSION  1.2.0

FROM gbleux/nodejs:latest
MAINTAINER Gordon Bleux <gordon.bleux+dnj@gmail.com> (@gbleux)

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY . /usr/src/app
ONBUILD RUN npm install

CMD ["npm", "start"]