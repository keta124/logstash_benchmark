#!/bin/bash

INTERVAL="60"  # update interval in seconds

while true
do
  a1=`grep -o '\.' /var/log/logstash/logstash.stdout |wc -l`
  #
  sleep $INTERVAL
  a2=`grep -o '\.' /var/log/logstash/logstash.stdout |wc -l`
  TXPP1=`expr $a2 - $a1`
  TXPPS1=`expr $TXPP1 / 60`
  echo "$TXPPS1"
  #
  sleep $INTERVAL
  a3=`grep -o '\.' /var/log/logstash/logstash.stdout |wc -l`
  TXPP2=`expr $a3 - $a2`
  TXPPS2=`expr $TXPP2 / 60`
  echo "$TXPPS2"
  #
  sleep $INTERVAL
  a4=`grep -o '\.' /var/log/logstash/logstash.stdout |wc -l`
  TXPP3=`expr $a4 - $a3`
  TXPPS3=`expr $TXPP3 / 60`
  echo "$TXPPS3"
  #
  sleep $INTERVAL
  a5=`grep -o '\.' /var/log/logstash/logstash.stdout |wc -l`
  TXPP4=`expr $a5 - $a4`
  TXPPS4=`expr $TXPP4 / 60`
  echo "$TXPPS4"
  #
  sleep $INTERVAL
  a6=`grep -o '\.' /var/log/logstash/logstash.stdout |wc -l`
  TXPP5=`expr $a6 - $a5`
  TXPPS5=`expr $TXPP5 / 60`
  echo "$TXPPS5"
  SUM=`expr $a6 / 300`
  echo "IN 5m $SUM /s"
done
