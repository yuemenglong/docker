cargo build --features ffi --release

git submodule update --init --recursive

cargo clean
cargo build --features ffi --profile dev

0.23.4



apt update
apt upgrade

# install java11 git maven
apt install -y openjdk-11-jdk git maven cmake \
ninja-build build-essential rustc cargo autoconf \
libtool vim

git clone https://github.com/netty/netty-incubator-codec-quic
git checkout netty-incubator-codec-parent-quic-0.0.70.Final
# 修改codec-native-quic/pom.xml
# <quicheBranch>0.23.4</quicheBranch>
mvn install

export http_proxy="http://172.28.32.1:7890"
export https_proxy="http://172.28.32.1:7890"

git config --global http.proxy http://172.28.32.1:7890
git config --global https.proxy http://172.28.32.1:7890
