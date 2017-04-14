#!/bin/bash

# start mongos
/mongodb/bin/mongos --configdb rzsetConfig/localhost:27018 &
sleep 10
# setting sharding
/mongodb/bin/mongo localhost:27017 addShard.js
