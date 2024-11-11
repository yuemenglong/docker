#!/bin/bash

# MySQL root密码
MYSQL_ROOT_PASSWORD="root"

# 要查询的数据库名称
DATABASE_NAME="test"

# 查询test表数据量的SQL命令
COUNT_ROWS_SQL="SELECT COUNT(*) AS count FROM test;"

# 循环遍历mysql-mysql1-1 到 mysql-mysql10-1 的容器名称
for i in {0..9}; do
  # 容器名称
  container_name="mysql${i}"

  # 构建docker exec命令，指定数据库
  docker_command="docker exec -i $container_name mysql -uroot -p$MYSQL_ROOT_PASSWORD -D $DATABASE_NAME -e \"$COUNT_ROWS_SQL\""

  # 打印docker命令以便调试
  echo "Executing: $docker_command"

  # 执行docker命令并获取结果
  count=$(eval $docker_command 2>/dev/null | tail -n 1)

  if [ $? -eq 0 ]; then
    echo "Container $container_name has $count rows in 'test' table."
  else
    echo "Failed to query row count in $container_name."
  fi
done
