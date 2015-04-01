#!/bin/bash

service syslog-ng start
service postfix start
tail -f /var/log/mail.log

