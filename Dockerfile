FROM node:10.9.0
MAINTAINER Xavier
RUN mkdir -p /home/rap2-dolores
WORKDIR /home/rap2-dolores
COPY . /home/rap2-dolores
RUN npm install npm@4.6.1 -g
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install -g http-server
RUN cnpm install --unsafe-perm -g node-sass
RUN cnpm install
RUN cnpm run build
