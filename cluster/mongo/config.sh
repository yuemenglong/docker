docker exec -it mongo1 mongo

rs.initiate()
rs.add('172.28.41.59:27018')
rs.add('172.28.41.59:27019')
rs.conf()

var config = rs.conf();
config.members[0].host = "172.28.41.59:27017"; // 修改主节点
config.members[1].host = "172.28.41.59:27018"; // 修改第二节点
config.members[2].host = "172.28.41.59:27019"; // 修改第三节点
rs.reconfig(config);

rs.conf()