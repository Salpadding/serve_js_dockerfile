FROM node:13-alpine

RUN mkdir /app
ADD package.json /app/
ADD package-lock.json /app/
RUN cd /app && \
    npm install --registry=https://registry.npm.taobao.org

WORKDIR /app/

CMD 'node /app/node_modules/serve/bin/serve.js'
EXPOSE 5000
