#!/bin/sh
#export HOSTIP=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
#sed -e "s/HOSTIP/${HOSTIP}/g" docker-compose.yml | docker-compose --file - up -d
sudo su <<HERE
tar -zxvf cassandra.tgz
tar -zxvf spark.tgz
tar -zxvf cassandra.tgz
tar -zxvf zeppelin.tgz
HERE
echo "Unzipping data"
docker-compose up -d 