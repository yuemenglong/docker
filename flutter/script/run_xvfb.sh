# DEBIAN_FRONTEND=noninteractive apt-get install -yq nodejs xvfb x11vnc novnc x11-apps
# DISPLAY=:0.0 xcalc
# http://容器ip:8080/vnc.html

mkdir -p /app/xvfb

nohup Xvfb :0 \
    -screen 0 1920x1080x24 \
    -listen tcp \
    -ac +extension GLX +extension RENDER \
    < /dev/null \
    > /app/xvfb/xvfb.log 2>&1 &

sleep 1s

nohup x11vnc \
    -display :0.0 -rfbport 5900 \
    -forever \
    -shared \
    -noipv6 \
    -passwd 111 \
    < /dev/null \
    > /app/xvfb/x11vnc1.log 2>&1 &

sleep 1s

nohup websockify \
    --web /usr/share/novnc 8080 localhost:5900 \
    < /dev/null \
    > /app/xvfb/websockify1.log 2>&1 &

