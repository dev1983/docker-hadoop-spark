#!/bin/bash
# Copy breweries.csv to the namenode.
  docker cp breweries.csv namenode:breweries.csv
# Go to the bash shell on the namenode with that same Container ID of the namenode.
  docker exec -it namenode bash
# Create a HDFS directory /data//openbeer/breweries.
  hdfs dfs -mkdir -p /data/openbeer/breweries
# Copy breweries.csv to HDFS:
  hdfs dfs -put breweries.csv /data/openbeer/breweries/breweries.csv
