worker: kafka/bin/zookeeper-server-start.sh $ZOOKEEPER_CONF
web: kafka/bin/kafka-server-start.sh $KAFKA_CONF --override listeners="PLAINTEXT://:$PORT"
worker: bin/telegraf -conf telegraf.conf
