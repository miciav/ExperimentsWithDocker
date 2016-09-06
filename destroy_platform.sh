#!/bin/sh
docker-compose down
rm cassandra.tgz
tar -zcvf cassandra.tgz cassandra
rm data.tgz
tar -zcvf data.tgz data
rm spark.tgz
tar -zcvf spark.tgz spark
rm zeppelin.tgz
tar -zcvf zeppelin.tgz zeppelin
sudo su <<HERE
rm -rf cassandra
rm -rf data
rm -rf spark
rm -rf zeppelin
HERE

