FROM ubuntu:14.04

RUN apt-get update && apt-get -y -q install postfix
RUN apt-get update && apt-get -y -q install syslog-ng syslog-ng-core

ADD run.sh /run.sh

expose 25
cmd ["/run.sh"]

