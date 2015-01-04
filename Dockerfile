FROM ubuntu:14.04

RUN apt-get update
CMD apt-get -y install postfix

