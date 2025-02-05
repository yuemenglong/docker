apt-get update -y 
apt-get upgrade -y

export http_proxy="http://172.28.32.1:10809"
export https_proxy="http://172.28.32.1:10809"

git config --global http.proxy http://172.28.32.1:10809
git config --global https.proxy http://172.28.32.1:10809


apt-get install -y nodejs curl npm build-essential cmake libssl-dev python3