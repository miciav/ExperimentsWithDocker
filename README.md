
# ExperimentsWithDocker
## Platform set up
- Install docker (1.12 >=) on your machine. Linux and Windows users can use Kitematic to simply the process of creating and managing an Linux virtual machine for this scope
- Install docker-compose (1.8 >=) on your machine
- Make sure you have at least 10Gb of RAM available on the machine that is going to run the platform
- Clone the project:  ```git clone  https://github.com/miciav/ExperimentsWithDocker.git```
- untar data files: 
  - ```tar -xzvf zeppelin.tgz ```
  - ``` tar -xzvf spark.tgz ```
  - ``` tar -xzvf cassandra.tgz ```
  - ``` tar -xzvf data.tgz ```

## Platform deployment and management
- Run the platform using docker-compose ```docker-compose up -d ```. This command will deploy the plaftform described in ```docker-compose.yml```. Other ```yml``` files are for reasearch purpose only and describe a more coplex plaftform
- To stop the platform type ```docker-compose down``` in the directory where ```docker-compose.yml``` is located 

## Utility scripts
- ```run_plaftform.sh```: 
  - removes existing data directory
  - untars data files
  - deploys and runs the platform
- ```destroy_platform.sh```
  - shuts down the platform
  - removes associated containers
  - removes existing (old) compressed data files
  - compresses data directory into data files
- ```peeping_data_stream.sh```
  - allows to check that the streams of messages is coming from the producer to kafka
- ```run_containerized_cqlsh.sh```
  - attaches ```cassandra``` container
  - runs ```cqlsh``` to allow the user to interact with the database

## Chagelog
- 05/09/2016 kafka in anonimous way, that is it can be deployed in a swarm without knowing in advance the host ip.

## TODO list
- consider to add StreamSet Datacollettor to simplify data ingestion
- https://www.big-data-europe.eu/scalable-sparkhdfs-workbench-using-docker/
- https://github.com/big-data-europe/ansible
- Add HUE: maybe not possible due to the lack of HDFS : added Spark-notebook in a separate version of docker-compose file
- Add Oozie
- Save data in HDFS using parquet
- Saving daa for Hive (deep down it uses parquet)
- Create a stream application with spark
- Create a job application with spark
- For a more complete experience I will consider to use Apache Ambari
- Use Structured Streaming (see https://www.youtube.com/watch?v=_1byVWTEK1s)
- Looking for a job scheduler - Azkaban seems interesting - Pinterest pinball as well as drake
- Burrow: https://github.com/linkedin/Burrow/blob/master/docker-compose.yml (useful example for kafka)
- WhalePrint: https://github.com/mantika/whaleprint
