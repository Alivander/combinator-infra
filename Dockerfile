FROM node:slim

ENV NPM_CONFIG_LOGLEVEL=warn

WORKDIR /usr/src/app

COPY build ./build
COPY server ./server
COPY src ./src
COPY package*.json ./

RUN npm install

CMD npm run serv
