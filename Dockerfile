FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install postfix
RUN apt-get -y -q install syslog-ng

expose 25
cmd ["sh", "-c", "service syslog-ng start ; service postfix start ; tail -F /var/log/mail.log"]

