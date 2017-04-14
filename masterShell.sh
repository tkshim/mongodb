#!/bin/bash

# start daemon and create replicaset
/mongodb/bin/shell/CreateReplicaSets.sh
sleep 10

# start and configure configserver
/mongodb/bin/shell/CreateConfigurationServer.sh
sleep 10

# start mongos and add configure sharding
/mongodb/bin/shell/SetupCluster.sh
sleep 10

# create users collection on test db
/mongodb/bin/shell/AddDataToCluster.sh

