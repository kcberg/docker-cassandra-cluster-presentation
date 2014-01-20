#!/bin/bash

nodes="node1:192.168.1.1 \
node2:192.168.1.2 \
node3:192.168.1.3 \
node4:192.168.1.4 \
node5:192.168.1.5 \
node6:192.168.1.6"

seeds="192.168.1.1,192.168.1.4"

for n in $nodes
do
  parts=(${n//:/ })
	echo "./start-node.sh ${parts[0]} ${parts[1]} $seeds"
	./start-node.sh ${parts[0]} ${parts[1]} $seeds
done
