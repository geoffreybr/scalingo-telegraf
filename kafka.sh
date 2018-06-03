#!/bin/bash

nohup kafka/bin/zookeeper-server-start.sh $ZOOKEEPER_CONF &
kafka/bin/kafka-server-start.sh $KAFKA_CONF --override listeners="PLAINTEXT://:$PORT"
