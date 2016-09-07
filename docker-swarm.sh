#!/bin/sh
docker network create --driver overlay  --subnet 10.0.9.0/24 --opt encrypted my-network
docker service create --replicas 1 --name zookeeper --network my-network \
-p 2181:2181/tcp \
--container-label zookeeper \
 wurstmeister/zookeeper 

docker service create --replicas 1 \
--name kafka \
--network my-network \
--env KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 \
--env KAFKA_ADVERTISED_PORT=9092 \
--mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
-p 9092:9092/tcp \
wurstmeister/kafka

docker service create --replicas 1 \
--name producer \
--network my-network \
--env ZK_ADDRESS=zookeeper:2181 \
--env KAFKA_ADDRESS=kafka:9092 \
miciav/producer

docker service create --replicas 1 \
--name zeppelin \
--network my-network \
--env ZEPPELIN_PORT=8080 \
--env MASTER=local[*] \
--env KAFKA_ADDRESS=kafka:9092 \
-p 9100:8080 \
--mount type=bind,source=./zeppelin/about.json,target=/usr/zeppelin/notebook/about.json \
--mount type=bind,source=./zeppelin/notebook,target=/usr/zeppelin/notebook \
--mount type=bind,source=./zeppelin/conf,target=/usr/zeppelin/conf \
dylanmei/zeppelin
  
