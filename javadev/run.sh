root=$(pwd)

docker run -d --name javadev \
--network host \
-v /tmp:/tmp \
--workdir /app \
ubuntu:20.04 /bin/bash -c "tail -f /dev/null"
