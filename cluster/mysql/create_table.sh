#!/bin/bash

# MySQL root密码
MYSQL_ROOT_PASSWORD="root"

# 创建数据库和表的SQL命令
CREATE_DATABASE_SQL="CREATE DATABASE IF NOT EXISTS test;"
USE_DATABASE_SQL="USE test;"
CREATE_TABLE_SQL="CREATE TABLE IF NOT EXISTS test (id BIGINT PRIMARY KEY, value VARCHAR(255));"

# 循环访问每个MySQL容器
for i in {0..8}; do
  # 生成容器名称
  container_name="mysql${i}"
  
  # 打印即将执行的 docker 命令
  echo "Running: docker exec -i $container_name mysql -uroot -p$MYSQL_ROOT_PASSWORD -e \"$CREATE_DATABASE_SQL $USE_DATABASE_SQL $CREATE_TABLE_SQL\""

  # 连接MySQL容器，创建数据库并创建表
  docker exec -i $container_name mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "$CREATE_DATABASE_SQL $USE_DATABASE_SQL $CREATE_TABLE_SQL" 2>/dev/null

  if [ $? -eq 0 ]; then
    echo "Successfully created database and table 'test' in $container_name."
  else
    echo "Failed to create database or table in $container_name."
  fi
done
