FROM node:13-alpine

RUN mkdir /app
ADD package.json /app/
RUN cd /app && \
    npm install

WORKDIR /app/

CMD 'node /app/node_modules/serve/bin/serve.js'
EXPOSE 5000
