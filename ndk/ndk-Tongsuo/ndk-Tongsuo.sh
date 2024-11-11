export ANDROID_NDK_HOME=/app/ndk
export PATH=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin:$PATH

export CC=aarch64-linux-android21-clang
export CXX=aarch64-linux-android21-clang++


./Configure android-arm64 -D__ANDROID_API__=21
make -j$(nproc)
