FROM node:latest

# copy Hubot app to docker container
RUN mkdir /bot && cd /bot
ADD . /bot
EXPOSE 9999
WORKDIR /bot

# default command for "dockerrun"
CMD ["bin/hubot", "--adapter", "slack"]

