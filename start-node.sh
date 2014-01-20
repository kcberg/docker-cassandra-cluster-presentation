#!/bin/bash

projectdir="/home/kberg/docker-cassandra-cluster"
nodename=$1
nodeip=$2
seeds=$3
datadir=$projectdir/cassandra-data/$nodename

mkdir -p $datadir
docker run -v $datadir:/var/lib/cassandra:rw -name $nodename -d kberg/cassandra start.sh $seeds
./pipework br1 $nodename $nodeip/24
