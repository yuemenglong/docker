apt-get update -y 
apt-get upgrade -y

export http_proxy="http://172.28.32.1:10809"
export https_proxy="http://172.28.32.1:10809"

git config --global http.proxy http://172.28.32.1:10809
git config --global https.proxy http://172.28.32.1:10809


apt-get install -yq nodejs xvfb x11vnc novnc x11-apps 
apt-get install -y curl unzip xz-utils zip libglu1-mesa pulseaudio vim git autoconf libtool
apt-get install -y build-essential g++ clang cmake ninja-build pkg-config libgtk-3-dev


pulseaudio --start --log-target=syslog





