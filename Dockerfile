FROM ubuntu:14.04

RUN apt-get update && apt-get -y -q install postfix
RUN apt-get update && apt-get -y -q install syslog-ng syslog-ng-core

expose 25
cmd ["sh", "-c", "service syslog-ng start ; service postfix start ; tail -F /var/log/mail.log"]

