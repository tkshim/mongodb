#!/bin/bash
# create users collection on test db
/mongodb/bin/mongo localhost:27017/test createUsers.js
