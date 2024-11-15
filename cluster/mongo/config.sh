docker exec -it mongo1 mongosh

rs.initiate()
rs.add('172.28.41.59:27018')
rs.add('172.28.41.59:27019')
rs.conf()

var config = rs.conf();
config.members[0].host = "172.28.41.59:27017"; 
config.members[1].host = "172.28.41.59:27018";
config.members[2].host = "172.28.41.59:27019";
rs.reconfig(config);
rs.conf()

db.adminCommand(
  {
    setDefaultRWConcern : 1,
    defaultWriteConcern: {  "w" : "majority" },
  }
)

db.adminCommand({ getDefaultRWConcern: 1 })

rs.status()




# sharding的配置

mongod --configsvr --replSet <replicaSetName> --dbpath <dbpath> --bind_ip localhost,<hostname>
mongosh --host <hostname> --port <port>

rs.initiate(
  {
    _id: "configrs",
    configsvr: true,
    members: [
      { _id : 0, host : "172.28.41.59:27017" },
      { _id : 1, host : "172.28.41.59:27018" },
      { _id : 2, host : "172.28.41.59:27019" }
    ]
  }
)

mongod --shardsvr --replSet <replSetName> --dbpath <dbpath> --bind_ip localhost,<hostname>
mongosh --host <hostname> --port <port>
rs.initiate({
  _id: "shard1rs",
  members: [
      { _id : 0, host : "172.28.41.59:27017" },
      { _id : 1, host : "172.28.41.59:27018" },
      { _id : 2, host : "172.28.41.59:27019" }
  ]
})

mongos --configdb <configReplSetName>/cfg1.example.net:27019,cfg2.example.net:27019,cfg3.example.net:27019 --bind_ip localhost,<hostname>
mongosh --host <hostname> --port <port>

sh.addShard("<replSetName>/shard1.example.net:27018,shard2.example.net:27018,shard3.example.net:27018")
sh.shardCollection("<database>.<collection>", { <shardKey> : "hashed" })



# db.adminCommand(
#   {
#     setDefaultRWConcern : 1,
#     defaultReadConcern: { "level" : "majority" },
#     defaultWriteConcern: {  "w" : "majority" },
#   }
# )

# config.settings.getLastErrorDefaults = { w: "majority", wtimeout: 5000 }
# config.setDefaultRWConcern = {
#   writeConcern: { w: "majority", wtimeout: 5000 },
#   readConcern: { level: "majority" }
# };


# var cfg = rs.conf()
# cfg.settings.getLastErrorDefaults = { w: "majority", wtimeout: 5000 }
# rs.reconfig(cfg)


# rs.status()