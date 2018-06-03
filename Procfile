web: ./kafka.sh
worker: bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic telegraf && bin/telegraf -conf telegraf.conf
