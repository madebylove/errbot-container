# Errbot - minimum docker file

FROM python:3

MAINTAINER Mike Love mlove@michaeldlove.com

ENV ERR_HOME=/opt/errbot

RUN apt-get update && \
    apt-get install -y libssl-dev libffi-dev && \
    apt-get clean

RUN pip3 install errbot sleekxmpp
RUN mkdir $ERR_HOME

WORKDIR $ERR_HOME

RUN errbot --init

CMD errbot
