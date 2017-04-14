#!/bin/bash

# start four mongo daemons
/mongodb/bin/mongod --shardsvr --replSet rzset01 --dbpath '/mongodb/bin/data/shard1/db01' --port 27019 &
/mongodb/bin/mongod --shardsvr --replSet rzset01 --dbpath '/mongodb/bin/data/shard1/db02' --port 27020 &
/mongodb/bin/mongod --shardsvr --replSet rzset02 --dbpath '/mongodb/bin/data/shard2/db01' --port 27021 &
/mongodb/bin/mongod --shardsvr --replSet rzset02 --dbpath '/mongodb/bin/data/shard2/db02' --port 27022 &

#
sleep 30

# configuration replica
/mongodb/bin/mongo localhost:27019 createReplicaSets01.js
/mongodb/bin/mongo localhost:27021 createReplicaSets02.js
