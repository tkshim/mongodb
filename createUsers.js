sh.enableSharding("test")
sh.shardCollection("test.users", {"username" : "hashed"})
for (var i=0; i<100000; i++) {
  db.users.insert({"username" : "user"+i, "created_at" : new Date()});
  }
