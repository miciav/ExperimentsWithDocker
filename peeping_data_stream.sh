#!/bin/sh

# kafkacat -C -b localhost:9092 -t my_topic
docker exec -it kafka /opt/kafka_2.11-0.10.0.1/bin/./kafka-console-consumer.sh --zookeeper zookeeper --topic my_topic

