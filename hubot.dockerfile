FROM node:8-alpine

RUN apk update && apk upgrade

# hubot
RUN npm install -g yo generator-hubot
RUN npm install hubot-slack --save
RUN npm install underscore async github@8.2.1 weighted --save

WORKDIR /hubot

ARG HUBOT_NAME=rasbot
ARG HUBOT_SLACK_TOKEN=xxxxxxxxxx

CMD bin/hubot --adapter slack