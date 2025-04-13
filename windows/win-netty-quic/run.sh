root=$(pwd)
root=$(dirname "$root")

docker run -d --name server-quic \
--network host \
-v "$root":/app/server \
-v /mnt/d/workspace/hitravel/hitravel-im-server:/app/im \
-v /mnt/c/Users/yml/.m2:/root/.m2 \
-v /tmp:/tmp \
--workdir /app \
ubuntu:20.04 /bin/bash -c "tail -f /dev/null"

