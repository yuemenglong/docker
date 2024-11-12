apt-get update -y 
apt-get upgrade -y

apt-get install -y curl git unzip xz-utils zip libglu1-mesa \
      clang cmake git \
      ninja-build pkg-config \
      libgtk-3-dev liblzma-dev \
      build-essential

apt-get install -yq nodejs xvfb x11vnc novnc x11-apps      
