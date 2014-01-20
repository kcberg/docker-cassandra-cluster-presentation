#!/bin/bash

nodes="node6 \
node5 \
node3 \
node2 \
node4 \
node1"

for n in $nodes
do
	docker stop $n
	docker rm $n
done
