FROM node:18-slim

WORKDIR /user/src/app

COPY package.json yarn.lock .yarnrc.yml ./
COPY .yarn ./.yarn

RUN yarn

COPY . . 

RUN yarn run build

EXPOSE 3000

