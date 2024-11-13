root=$(pwd)

docker run -d --name ubuntu \
--network host \
-v /tmp:/tmp \
-v $root/share:/app/share \
--workdir /app \
ubuntu:20.04 /bin/bash -c "tail -f /dev/null"
