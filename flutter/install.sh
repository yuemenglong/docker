apt-get update -y 
apt-get upgrade -y

export http_proxy="http://172.28.32.1:10809"
export https_proxy="http://172.28.32.1:10809"

git config --global http.proxy http://172.28.32.1:10809
git config --global https.proxy http://172.28.32.1:10809


# cd /app
# git clone --depth 1 https://github.com/flutter/flutter.git -b stable

mv /tmp/flutter_linux_3.22.2-stable.tar.xz .
tar -xvf flutter_linux_3.22.2-stable.tar.xz


export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PUB_HOSTED_URL=https://pub.flutter-io.cn

export PATH="$PATH:/app/flutter/bin"

flutter doctor

apt-get install -yq nodejs xvfb x11vnc novnc x11-apps 
apt-get install -y curl unzip xz-utils zip libglu1-mesa pulseaudio vim
apt-get install -y build-essential g++ clang cmake ninja-build pkg-config libgtk-3-dev


/app/script/run_xvfb.sh

export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PUB_HOSTED_URL=https://pub.flutter-io.cn

export PATH="$PATH:/app/flutter/bin"

export DISPLAY=:0.0



pulseaudio --start --log-target=syslog
build/linux/x64/release/bundle/example





apt-get install libmpv-dev


