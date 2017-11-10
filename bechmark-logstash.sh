#!/bin/sh
echo "start"
service logstash stop
service logstash start
sleep 100
service logstash stop
grep -o '\.' /var/log/logstash/logstash.stdout |wc -l

