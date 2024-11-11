https://github.com/BYVoid/OpenCC

mkdir build

cmake -B build -DCMAKE_BUILD_TYPE=Release \
      -DANDROID_ABI=arm64-v8a \
      -DANDROID_PLATFORM=android-21 \
      -DCMAKE_TOOLCHAIN_FILE=/app/ndk/build/cmake/android.toolchain.cmake \
      -DANDROID_NDK=/app/ndk

cmake --build build