#!/bin/bash

# 停止并删除所有服务容器和网络
docker-compose down

# 删除指定的卷
docker volume rm mongo_mongo1-data mongo_mongo2-data mongo_mongo3-data

docker network rm mongo_mongo-cluster
