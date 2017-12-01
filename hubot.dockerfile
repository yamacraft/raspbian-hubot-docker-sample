FROM node:6.11-alpine

RUN apk update && apk upgrade

# hubot
RUN npm install -g yo generator-hubot
RUN npm install hubot-slack --save
RUN npm install underscore async github@8.2.1 weighted --save

RUN adduser -h /hubot -s /bin/bash -S hubot
USER hubot
WORKDIR /hubot

ARG HUBOT_NAME=rasbot
ARG HUBOT_SLACK_TOKEN=xxxxxxxxxx

# Create hubot
RUN yo hubot --defaults --name=$HUBOT_NAME --adapter slack
ADD ./hubot/package.json package.json
ADD ./hubot/external-scripts.json external-scripts.json

# copy scripts
ADD ./hubot/scripts/*.coffee scripts/

CMD bin/hubot --adapter slack