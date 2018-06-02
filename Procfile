web: bin/zookeeper-server-start.sh $ZOOKEEPER_CONF > /dev/null&
web: bin/kafka-server-start.sh $KAFKA_CONF --override listeners="PLAINTEXT://:$PORT" > /dev/null&
