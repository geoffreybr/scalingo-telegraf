#!/bin/bash

nohup kafka/bin/zookeeper-server-start.sh $ZOOKEEPER_CONF &
kafka/bin/kafka-server-start.sh $KAFKA_CONF --override listeners="PLAINTEXT://:$PORT" &
kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic telegraf
bin/telegraf -conf telegraf.conf
fg
