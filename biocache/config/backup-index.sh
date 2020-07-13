#!/bin/bash

# Backup shard 1 

# s3: shard1_replica1, shard3_replica1

ssh -o StrictHostKeyChecking=no  172.31.20.111  "rm -Rf /data/solr-backup/biocache_shard1_replica1/*"  \
&& ssh -o StrictHostKeyChecking=no 172.31.20.111  "mkdir -p /data/solr-backup/biocache_shard1_replica1/"  \
&& ssh -o StrictHostKeyChecking=no 172.31.20.111  "mv /data/solr/biocache_live_shard1_replica1/* /data/solr-backup/biocache_shard1_replica1/"

# s0: shard1_replica2, shard3_replica2

ssh -o StrictHostKeyChecking=no  172.31.24.122  "rm -Rf /data/solr-backup/biocache_shard1_replica2/*"  \
&& ssh -o StrictHostKeyChecking=no 172.31.24.122  "mkdir -p /data/solr-backup/biocache_shard1_replica2/"  \
&& ssh -o StrictHostKeyChecking=no 172.31.24.122  "mv /data/solr/biocache_live_shard1_replica2/* /data/solr-backup/biocache_shard1_replica2/"


# Backup shard 2

# s2: shard2_replica2, shard4_replica2

ssh -o StrictHostKeyChecking=no  172.31.22.78  "rm -Rf /data/solr-backup/biocache_shard2_replica2/*"  \
&& ssh -o StrictHostKeyChecking=no 172.31.22.78  "mkdir -p /data/solr-backup/biocache_shard2_replica2/"  \
&& ssh -o StrictHostKeyChecking=no 172.31.22.78  "mv /data/solr/biocache_live_shard2_replica2/* /data/solr-backup/biocache_shard2_replica2/"

# s1: shard2_replica1, shard4_replica1

ssh -o StrictHostKeyChecking=no  172.31.20.15  "rm -Rf /data/solr-backup/biocache_shard2_replica1/*"  \
&& ssh -o StrictHostKeyChecking=no 172.31.20.15  "mkdir -p /data/solr-backup/biocache_shard2_replica1/" \
&& ssh -o StrictHostKeyChecking=no 172.31.20.15  "mv /data/solr/biocache_live_shard2_replica1/* /data/solr-backup/biocache_shard2_replica1/"

# Backup shard 3

# s3: shard1_replica1, shard3_replica1

ssh -o StrictHostKeyChecking=no  172.31.20.111  "rm -Rf /data/solr-backup/biocache_shard3_replica1/*"  \
&& ssh -o StrictHostKeyChecking=no 172.31.20.111  "mkdir -p /data/solr-backup/biocache_shard3_replica1/"   \
&& ssh -o StrictHostKeyChecking=no 172.31.20.111  "mv /data/solr/biocache_live_shard3_replica1/* /data/solr-backup/biocache_shard3_replica1/"

# s0: shard1_replica2, shard3_replica2

ssh -o StrictHostKeyChecking=no  172.31.24.122  "rm -Rf /data/solr-backup/biocache_shard3_replica2/*"  \
&& ssh -o StrictHostKeyChecking=no 172.31.24.122  "mkdir -p /data/solr-backup/biocache_shard3_replica2/"  \
&& ssh -o StrictHostKeyChecking=no 172.31.24.122  "mv /data/solr/biocache_live_shard3_replica2/* /data/solr-backup/biocache_shard3_replica2/"

# Backup shard 4

# s2: shard2_replica2, shard4_replica2

ssh -o StrictHostKeyChecking=no  172.31.22.78  "rm -Rf /data/solr-backup/biocache_shard4_replica2/*"  \
&& ssh -o StrictHostKeyChecking=no 172.31.22.78  "mkdir -p /data/solr-backup/biocache_shard4_replica2/"  \
&& ssh -o StrictHostKeyChecking=no 172.31.22.78  "mv /data/solr/biocache_live_shard4_replica2/* /data/solr-backup/biocache_shard4_replica2/"

# s1: shard2_replica1, shard4_replica1
#----
ssh -o StrictHostKeyChecking=no  172.31.20.15  "rm -Rf /data/solr-backup/biocache_shard4_replica1/*"  \
&& ssh -o StrictHostKeyChecking=no 172.31.20.15  "mkdir -p /data/solr-backup/biocache_shard4_replica1/"  \
&& ssh -o StrictHostKeyChecking=no 172.31.20.15  "mv /data/solr/biocache_live_shard4_replica1/* /data/solr-backup/biocache_shard4_replica1"

# recreate original directories and core.properties files

ssh -o StrictHostKeyChecking=no  172.31.20.111 "mkdir -p /data/solr/biocache_live_shard1_replica1/data/" \
&& ssh -o StrictHostKeyChecking=no  172.31.20.111 "mkdir -p /data/solr/biocache_live_shard3_replica1/data/" \
&& ssh -o StrictHostKeyChecking=no  172.31.20.111 "cp /data/solr-backup/biocache_shard1_replica1/core.properties /data/solr/biocache_live_shard1_replica1/core.properties" \
&& ssh -o StrictHostKeyChecking=no  172.31.20.111 "cp /data/solr-backup/biocache_shard3_replica1/core.properties /data/solr/biocache_live_shard3_replica1/core.properties" \
&& ssh -o StrictHostKeyChecking=no  172.31.20.111 "chown -R solr:solr /data/solr"

ssh -o StrictHostKeyChecking=no  172.31.24.122 "mkdir -p /data/solr/biocache_live_shard1_replica2/data/" \
&& ssh -o StrictHostKeyChecking=no  172.31.24.122 "mkdir -p /data/solr/biocache_live_shard3_replica2/data/" \
&& ssh -o StrictHostKeyChecking=no  172.31.24.122 "cp /data/solr-backup/biocache_shard1_replica2/core.properties /data/solr/biocache_live_shard1_replica2/core.properties" \
&& ssh -o StrictHostKeyChecking=no  172.31.24.122 "cp /data/solr-backup/biocache_shard3_replica2/core.properties /data/solr/biocache_live_shard3_replica2/core.properties" \
&& ssh -o StrictHostKeyChecking=no  172.31.24.122 "chown -R solr:solr /data/solr"

ssh -o StrictHostKeyChecking=no  172.31.22.78 "mkdir -p /data/solr/biocache_live_shard2_replica2/data/" \
&& ssh -o StrictHostKeyChecking=no  172.31.22.78 "mkdir -p /data/solr/biocache_live_shard4_replica2/data/" \
&& ssh -o StrictHostKeyChecking=no  172.31.22.78 "cp /data/solr-backup/biocache_shard2_replica2/core.properties /data/solr/biocache_live_shard2_replica2/core.properties" \
&& ssh -o StrictHostKeyChecking=no  172.31.22.78 "cp /data/solr-backup/biocache_shard4_replica2/core.properties /data/solr/biocache_live_shard4_replica2/core.properties" \
&& ssh -o StrictHostKeyChecking=no  172.31.22.78 "chown -R solr:solr /data/solr"

ssh -o StrictHostKeyChecking=no 172.31.20.15 "mkdir -p /data/solr/biocache_live_shard4_replica1/data/" \
&& ssh -o StrictHostKeyChecking=no 172.31.20.15 "mkdir -p /data/solr/biocache_live_shard2_replica1/data/" \
&& ssh -o StrictHostKeyChecking=no 172.31.20.15 "cp /data/solr-backup/biocache_shard4_replica1/core.properties /data/solr/biocache_live_shard4_replica1/core.properties" \
&& ssh -o StrictHostKeyChecking=no 172.31.20.15 "cp /data/solr-backup/biocache_shard2_replica1/core.properties /data/solr/biocache_live_shard2_replica1/core.properties" \
&& ssh -o StrictHostKeyChecking=no 172.31.20.15 "chown -R solr:solr /data/solr"