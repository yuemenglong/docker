apt install -y git build-essential lsb-release sudo wget curl cmake vim
apt install -y gdb gdbserver pkg-config libpcre3-dev zlib1g-dev gcc g++ unzip


wget https://dl.google.com/android/repository/android-ndk-r26d-linux.zip

unzip android-ndk-r26d-linux.zip

git config --global http.proxy http://172.28.32.1:10809
git config --global https.proxy http://172.28.32.1:10809

