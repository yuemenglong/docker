mkdir build
cd build
cmake .. -G "Visual Studio 17 2022"


msbuild libuv.sln /p:Configuration=Release

msbuild libuv.sln /p:Configuration=Debug