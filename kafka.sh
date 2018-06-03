#!/bin/bash

nohup kafka/bin/zookeeper-server-start.sh $ZOOKEEPER_CONF &

sleep 20 && kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic telegraf &
sleep 25 && bin/telegraf --config telegraf.conf &

kafka/bin/kafka-server-start.sh $KAFKA_CONF --override listeners="PLAINTEXT://:$PORT"
