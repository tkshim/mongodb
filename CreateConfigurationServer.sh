#!/bin/bash

# start configsvr
/mongodb/bin/mongod --configsvr --replSet rzsetConfig --dbpath '/mongodb/bin/data/configsrv' --port 27018 &
sleep 10
# setting configsvr
/mongodb/bin/mongo localhost:27018 settingConfigServer.js
