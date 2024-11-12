root=$(pwd)

docker run -d --name flutter \
--network host \
-e "PATH=/app/flutter/bin:$PATH" \
-v $root/script:/app/script \
-v /tmp:/tmp \
--workdir /app \
ubuntu:20.04 /bin/bash -c "tail -f /dev/null"
