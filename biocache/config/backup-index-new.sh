#!/bin/bash

echo "******** WARNING ********"
echo "This will drop the backup index on **_NEW_** SOLR cluster, and backup the live index"
read -p "Are you sure you wish to do this? (y/n)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Backing up..."
else
   exit 1
fi

# Backup s0_new:

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "rm -Rf /data1/solr-backup/biocache_shard1_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mkdir -p /data1/solr-backup/biocache_shard1_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mv /data1/solr/biocache_shard1_replica1/data/* /data1/solr-backup/biocache_shard1_replica1/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "rm -Rf /data1/solr-backup/biocache_shard3_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mkdir -p /data1/solr-backup/biocache_shard3_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mv /data1/solr/biocache_shard3_replica1/data/* /data1/solr-backup/biocache_shard3_replica1/data/"


ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "rm -Rf /data2/solr-backup/biocache_shard5_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mkdir -p /data2/solr-backup/biocache_shard5_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mv /data2/solr/biocache_shard5_replica1/data/* /data2/solr-backup/biocache_shard5_replica1/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "rm -Rf /data2/solr-backup/biocache_shard7_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mkdir -p /data2/solr-backup/biocache_shard7_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mv /data2/solr/biocache_shard7_replica1/data/* /data2/solr-backup/biocache_shard7_replica1/data/"


ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "rm -Rf /data3/solr-backup/biocache_shard9_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mkdir -p /data3/solr-backup/biocache_shard9_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mv /data3/solr/biocache_shard9_replica1/data/* /data3/solr-backup/biocache_shard9_replica1/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "rm -Rf /data3/solr-backup/biocache_shard11_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mkdir -p /data3/solr-backup/biocache_shard11_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.24.134  "mv /data3/solr/biocache_shard11_replica1/data/* /data3/solr-backup/biocache_shard11_replica1/data/"


# Backup s1_new:

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "rm -Rf /data1/solr-backup/biocache_shard2_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mkdir -p /data1/solr-backup/biocache_shard2_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mv /data1/solr/biocache_shard2_replica2/data/* /data1/solr-backup/biocache_shard2_replica2/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "rm -Rf /data1/solr-backup/biocache_shard4_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mkdir -p /data1/solr-backup/biocache_shard4_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mv /data1/solr/biocache_shard4_replica2/data/* /data1/solr-backup/biocache_shard4_replica2/data/"


ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "rm -Rf /data2/solr-backup/biocache_shard6_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mkdir -p /data2/solr-backup/biocache_shard6_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mv /data2/solr/biocache_shard6_replica2/data/* /data2/solr-backup/biocache_shard6_replica2/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "rm -Rf /data2/solr-backup/biocache_shard8_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mkdir -p /data2/solr-backup/biocache_shard8_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mv /data2/solr/biocache_shard8_replica2/data/* /data2/solr-backup/biocache_shard8_replica2/data/"


ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "rm -Rf /data3/solr-backup/biocache_shard10_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mkdir -p /data3/solr-backup/biocache_shard10_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mv /data3/solr/biocache_shard10_replica2/data/* /data3/solr-backup/biocache_shard10_replica2/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "rm -Rf /data3/solr-backup/biocache_shard12_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mkdir -p /data3/solr-backup/biocache_shard12_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.27.111  "mv /data3/solr/biocache_shard12_replica2/data/* /data3/solr-backup/biocache_shard12_replica2/data/"


# Backup s2_new:

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "rm -Rf /data1/solr-backup/biocache_shard1_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mkdir -p /data1/solr-backup/biocache_shard1_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mv /data1/solr/biocache_shard1_replica2/data/* /data1/solr-backup/biocache_shard1_replica2/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "rm -Rf /data1/solr-backup/biocache_shard3_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mkdir -p /data1/solr-backup/biocache_shard3_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mv /data1/solr/biocache_shard3_replica2/data/* /data1/solr-backup/biocache_shard3_replica2/data/"


ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "rm -Rf /data2/solr-backup/biocache_shard5_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mkdir -p /data2/solr-backup/biocache_shard5_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mv /data2/solr/biocache_shard5_replica2/data/* /data2/solr-backup/biocache_shard5_replica2/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "rm -Rf /data2/solr-backup/biocache_shard7_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mkdir -p /data2/solr-backup/biocache_shard7_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mv /data2/solr/biocache_shard7_replica2/data/* /data2/solr-backup/biocache_shard7_replica2/data/"


ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "rm -Rf /data3/solr-backup/biocache_shard9_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mkdir -p /data3/solr-backup/biocache_shard9_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mv /data3/solr/biocache_shard9_replica2/data/* /data3/solr-backup/biocache_shard9_replica2/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "rm -Rf /data3/solr-backup/biocache_shard11_replica2/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mkdir -p /data3/solr-backup/biocache_shard11_replica2/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.17.162  "mv /data3/solr/biocache_shard11_replica2/data/* /data3/solr-backup/biocache_shard11_replica2/data/"


# Backup s3_new:

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "rm -Rf /data1/solr-backup/biocache_shard2_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mkdir -p /data1/solr-backup/biocache_shard2_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mv /data1/solr/biocache_shard2_replica1/data/* /data1/solr-backup/biocache_shard2_replica1/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "rm -Rf /data1/solr-backup/biocache_shard4_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mkdir -p /data1/solr-backup/biocache_shard4_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mv /data1/solr/biocache_shard4_replica1/data/* /data1/solr-backup/biocache_shard4_replica1/data/"


ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "rm -Rf /data2/solr-backup/biocache_shard6_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mkdir -p /data2/solr-backup/biocache_shard6_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mv /data2/solr/biocache_shard6_replica1/data/* /data2/solr-backup/biocache_shard6_replica1/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "rm -Rf /data2/solr-backup/biocache_shard8_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mkdir -p /data2/solr-backup/biocache_shard8_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mv /data2/solr/biocache_shard8_replica1/data/* /data2/solr-backup/biocache_shard8_replica1/data/"


ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "rm -Rf /data3/solr-backup/biocache_shard10_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mkdir -p /data3/solr-backup/biocache_shard10_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mv /data3/solr/biocache_shard10_replica1/data/* /data3/solr-backup/biocache_shard10_replica1/data/"

ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "rm -Rf /data3/solr-backup/biocache_shard12_replica1/data/*"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mkdir -p /data3/solr-backup/biocache_shard12_replica1/data/"  \
&& ssh -o StrictHostKeyChecking=no -i /home/ubuntu/ALSNBN.pem 172.31.23.18  "mv /data3/solr/biocache_shard12_replica1/data/* /data3/solr-backup/biocache_shard12_replica1/data/"