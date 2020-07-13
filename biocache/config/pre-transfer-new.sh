sudo mkdir -p /data/solr/biocache/data1/index
sudo mkdir -p /data/solr/biocache/data1/tlog
sudo mkdir -p /data/solr/biocache/data1/snapshot_metadata
sudo mv /data/solr/merged_0/* /data/solr/biocache/data1/index/

sudo mkdir -p /data/solr/biocache/data2/index
sudo mkdir -p /data/solr/biocache/data2/tlog
sudo mkdir -p /data/solr/biocache/data2/snapshot_metadata
sudo mv /data/solr/merged_1/* /data/solr/biocache/data2/index/

sudo mkdir -p /data/solr/biocache/data3/index
sudo mkdir -p /data/solr/biocache/data3/tlog
sudo mkdir -p /data/solr/biocache/data3/snapshot_metadata
sudo mv /data/solr/merged_2/* /data/solr/biocache/data3/index/