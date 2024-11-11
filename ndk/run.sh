docker run -d --name ndk \
--network host \
-v .:/work \
-v /tmp:/tmp \
ubuntu:20.04 /bin/bash -c "tail -f /dev/null"
