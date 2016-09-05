
# ExperimentsWithDocker
## Chagelog
- 05/09/2016 kafka in anonimous way, that is it can be deployed in a swarm without knowing in advance the host ip.
## TODO list
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
