#!/bin/bash

echo "******** WARNING ********"
echo "This will overwrite the live index on **_NEW_** SOLR cluster, if it exists. You should generally have backed this up, though."
read -p "Are you sure you wish to do this? (y/n)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Transferring..."
else
   exit 1
fi


scp -o StrictHostKeyChecking=no -i ~/ALSNBN.pem -r /data/solr/biocache/data1/* 172.31.24.134:/data1/solr/biocache_shard1_replica1/data/
scp -o StrictHostKeyChecking=no -i ~/ALSNBN.pem -r /data/solr/biocache/data1/* 172.31.17.162:/data1/solr/biocache_shard1_replica2/data/

scp -o StrictHostKeyChecking=no -i ~/ALSNBN.pem -r /data/solr/biocache/data2/* 172.31.24.134:/data2/solr/biocache_shard5_replica1/data/
scp -o StrictHostKeyChecking=no -i ~/ALSNBN.pem -r /data/solr/biocache/data2/* 172.31.17.162:/data2/solr/biocache_shard5_replica2/data/

scp -o StrictHostKeyChecking=no -i ~/ALSNBN.pem -r /data/solr/biocache/data3/* 172.31.24.134:/data3/solr/biocache_shard9_replica1/data/
scp -o StrictHostKeyChecking=no -i ~/ALSNBN.pem -r /data/solr/biocache/data3/* 172.31.17.162:/data3/solr/biocache_shard9_replica2/data/