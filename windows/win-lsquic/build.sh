先编译boringssl
mkdir build
cd build
cmake .. -G "Visual Studio 17 2022" 
MSBuild.exe BoringSSL.sln /p:Configuration=Release

再编译zlib
cmake .. -G "Visual Studio 17 2022" 
MSBuild.exe zlib.sln /p:Configuration=Release
将zconf.h复制到外层


再编译libevent
vcpkg install zlib:x64-windows-static
vcpkg install libevent:x64-windows-static


git submodule update --init
mkdir build
cd build
# cmake -DLSQUIC_BIN=OFF -DLSQUIC_TESTS=OFF -DBORINGSSL_INCLUDE="../../boringssl/include" -DZLIB_INCLUDE_DIR="../../zlib/include" .. -G "Visual Studio 17 2022"
# MSBuild.exe lsquic.sln /p:Configuration=Release

cmake -DCMAKE_GENERATOR_PLATFORM=x64 ^
-DCMAKE_C_FLAGS="/utf-8" -DCMAKE_CXX_FLAGS="/utf-8" ^
-DLSQUIC_BIN=OFF -DLSQUIC_TESTS=OFF ^
-DBUILD_SHARED_LIBS=OFF ^
-DBORINGSSL_INCLUDE="D:/workspace/hitravel/hitravel-im-quic/boringssl/include" ^
-DZLIB_INCLUDE_DIR="D:/workspace/hitravel/hitravel-im-quic/zlib" ^
-DVCPKG_TARGET_TRIPLET=x64-windows-static ^
-DCMAKE_TOOLCHAIN_FILE="D:/env/vcpkg/scripts/buildsystems/vcpkg.cmake" ^
-DCMAKE_BUILD_TYPE=Debug ^
..


msbuild ALL_BUILD.vcxproj

# IF (NOT DEFINED BORINGSSL_INCLUDE AND DEFINED BORINGSSL_DIR)
add_definitions(-DWIN32)
set(BORINGSSL_LIB_ssl "../../boringssl/build/Release/ssl.lib")
set(BORINGSSL_LIB_crypto "../../boringssl/build/Release/crypto.lib")



