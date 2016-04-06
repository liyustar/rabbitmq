FROM ubuntu:14.04
MAINTAINER liyustar liyustar@gmail.com

RUN apt-get update
RUN apt-get install -y rabbitmq-server

# rabbitmq-server config
RUN rabbitmq-plugins enable rabbitmq_management

# Declare
EXPOSE 15672
EXPOSE 5672

CMD ["rabbitmq-server","start"]
