#!/bin/sh
#export HOSTIP=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
#sed -e "s/HOSTIP/${HOSTIP}/g" docker-compose.yml | docker-compose --file - up -d

sudo su <<HERE
rm -rf cassandra
rm -rf data
rm -rf spark
rm -rf zeppelin
HERE
tar -xzvf cassandra.tgz
tar -xzvf data.tgz
tar -xzvf spark.tgz
tar -xzvf zeppelin.tgz
docker-compose up -d 
