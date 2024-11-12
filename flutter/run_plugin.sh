root=$(pwd)

docker rm -f flutter

docker run -it --name flutter \
-p 8080:8080 \
-e "PATH=/app/flutter/bin:$PATH" \
-e http_proxy="http://172.28.32.1:10809" \
-e https_proxy="http://172.28.32.1:10809" \
-v /mnt/d/workspace/hitravel/chat-app-desktop/plugins/win_plugin:/app/flutter-plugin \
-v $root/script:/app/script \
--workdir /app \
yml/flutter

