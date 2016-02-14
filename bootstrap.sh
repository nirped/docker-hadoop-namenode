#!/bin/sh

confd -log-level="debug" -onetime -backend env 

if [ -e "/tmp/.EMPTY" ]
then 
  hadoop namenode -format -force
  rm /tmp/.EMPTY
fi

exec hdfs namenode
