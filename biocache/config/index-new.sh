#!/bin/bash
rm -Rf /data/solr/biocache/data/index/*
rm -Rf /data/solr/biocache/data1/index/*
rm -Rf /data/solr/biocache/data2/index/*
rm -Rf /data/solr/biocache/data3/index/*
rm -Rf /data/solr/merged_0
rm -Rf /data/solr/merged_1
rm -Rf /data/solr/merged_2
rm -Rf /data/solr/solr-create
biocache index-local-node -t 6 -ms 3 -ws 1000000 > /cassandra-data/index-new.log