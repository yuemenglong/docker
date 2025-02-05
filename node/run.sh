root=$(pwd)
pj=/mnt/d/workspace/hitravel/lcdp/low-code-script-server

docker run -d --name node \
--network host \
-v /tmp:/tmp \
-v $root/share:/app/share \
-v $pj/src:/app/lcdp/src \
-v $pj/package.json:/app/lcdp/package.json \
-v $pj/tsconfig.json:/app/lcdp/tsconfig.json \
-v $pj/config.yaml:/app/lcdp/config.yaml \
--workdir /app \
ubuntu:20.04 /bin/bash -c "tail -f /dev/null"
