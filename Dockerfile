FROM node:18-slim

WORKDIR /user/src/app

COPY package.json ./
RUN yarn

COPY . . 

RUN yarn run build

EXPOSE 3000

