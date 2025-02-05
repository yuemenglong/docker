git submodule update --init

mkdir build
cd build
cmake .. -G "Visual Studio 17 2022" -DNCNN_VULKAN=ON


msbuild ncnn.sln /p:Configuration=Release