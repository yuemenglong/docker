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