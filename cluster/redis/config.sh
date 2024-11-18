# 进入一个节点，执行以下命令
redis-cli --cluster create 172.28.41.59:7001 172.28.41.59:7002 172.28.41.59:7003 172.28.41.59:7004 172.28.41.59:7005 172.28.41.59:7006 --cluster-replicas 1



4.3 Cluster模式配置和实现
配置Redis节点：为每个节点创建一个redis.conf配置文件，并添加如下配置：

# cluster节点端口号
port 7001

# 开启集群模式
cluster-enabled yes

# 节点超时时间
cluster-node-timeout 15000
像这样的配置，一共需要创建6个，我们做一个三主三从的集群。

启动Redis节点：使用如下命令启动6个节点：

redis> redis-server redis_7001.conf
创建Redis Cluster：使用Redis命令行工具执行如下命令创建Cluster：

redis> redis-cli --cluster create 172.28.41.59:7001 172.28.41.59:7002 172.28.41.59:7003 172.28.41.59:7004 172.28.41.59:7005 172.28.41.59:7006 --cluster-replicas 1



redis-cli -h <host> -p <port> cluster info