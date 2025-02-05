apt update
apt upgrade

apt install -y openjdk-11-jdk maven git vim

apt install -y openssh-server

mkdir /var/run/sshd

echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config 
echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

echo 'root:root' | chpasswd

sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config

/usr/sbin/sshd -D